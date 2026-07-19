#!/usr/bin/env python3
"""Tail a Claude Code session transcript directory as a compact live event feed.

Usage:
    python3 observer-tail.py <claude-projects-dir>

e.g.
    python3 observer-tail.py ~/.claude/projects/-Users-you-Desktop-your-engagement-clone

Emits one line per event (USER / AI / TOOL), truncated for signal over noise.
Designed to run inside the observer session's background monitor: each stdout
line becomes a notification. New session files appearing in the directory are
picked up automatically. Skips everything already on disk at startup
(baseline), so only *new* activity streams.
"""
import json, time, glob, os, sys

if len(sys.argv) != 2:
    sys.exit(__doc__)
DIRP = os.path.expanduser(sys.argv[1])

offsets = {}
for f in glob.glob(DIRP + "/*.jsonl"):
    offsets[f] = os.path.getsize(f)  # baseline: skip history

def emit(role, text, limit=220):
    text = " ".join(str(text).split())
    if text:
        print(f"{role}: {text[:limit]}", flush=True)

while True:
    for f in sorted(glob.glob(DIRP + "/*.jsonl")):
        start = offsets.get(f, 0)
        size = os.path.getsize(f)
        if size <= start:
            continue
        with open(f) as fh:
            fh.seek(start)
            chunk = fh.read()
        offsets[f] = size
        for line in chunk.splitlines():
            try:
                e = json.loads(line)
            except Exception:
                continue
            t = e.get("type")
            if t == "user":
                c = e.get("message", {}).get("content")
                texts = [c] if isinstance(c, str) else [
                    p.get("text", "") for p in (c or [])
                    if isinstance(p, dict) and p.get("type") == "text"
                ]
                for tx in texts:
                    if tx.strip() and not tx.strip().startswith("<"):
                        emit("USER", tx)
            elif t == "assistant":
                for p in e.get("message", {}).get("content", []):
                    if isinstance(p, dict):
                        if p.get("type") == "text":
                            emit("AI", p.get("text", ""))
                        elif p.get("type") == "tool_use":
                            emit("TOOL", f"{p.get('name')} {str(p.get('input'))[:120]}")
    time.sleep(2)
