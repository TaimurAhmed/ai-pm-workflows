# Pair-AI Dogfooding & Iterating ✅

**What it is:** a way of working where you dogfood these workflows in one session while a second AI session observes live — catching friction, filing issues, and crystallising improvements — without you ever taking a screenshot or pasting a transcript.

Proven on two live runs (Checkatrade, Bewerbot 9000). This README is for **anyone contributing to this project**.

---

## The two channels

1. **The driver** — you, in a terminal Claude Code session inside an engagement clone, running the workflows *by the book* (greenfield: `/start` → `/generate` → populate → `/synthesise`). This session knows only what's in the repo — that's the point; it's the product under test.
2. **The observer** — a second Claude session (desktop app works well) acting as meta-PM and pairing partner: watching your driver session in near-real-time, tapping your shoulder here when something matters, and turning friction into GitHub issues while you keep working.

## How the observer sees you (no screenshots)

Claude Code transcribes every session to disk as it happens:

```
~/.claude/projects/<project-folder-slug>/<session-id>.jsonl
```

The observer tails that file with the script in this folder:

```bash
python3 observer-tail.py ~/.claude/projects/-Users-you-Desktop-your-engagement-clone
```

In practice the observer session wraps this in a background monitor so events stream in automatically. Every user message, AI reply, and tool call appears within ~2 seconds.

**Known blind spot:** the transcript carries the *conversation*, not your keystrokes — typos, slash-command errors, and TUI dialogs never reach it. For those, a screenshot is still the fallback.

## The etiquette (what made it work)

1. **The observer speaks only for shoulder-taps** — a wrong turn, a friction moment, a meta-observation. No play-by-play narration.
2. **Friction → GitHub issue, immediately.** One sentence of evidence, a proposed fix, back to work.
3. **The run never stops to fix the tool.** The dry run's job is to *surface* defects; fixes ship after (or in the observer channel, never blocking the driver).
4. **The driver's session stays honest.** The observer doesn't feed it answers; the product must stand on its own docs. (Fun fact: `git pull` lands mid-session — a file-aware driver session will notice product updates appear under its feet.)
5. **Crystallise at the end:** template freezes, debrief, issue grooming — from the observer's ledger.

## The artifacts — and where they live

- **Observer ledger** — `runs/<slug>/observer-notes.md` in the engagement clone: freeze lists, run state, debrief material. **Lives in `runs/`, which is gitignored: session context stays local to your machine, never on GitHub.** That's policy, not accident — ledgers contain unfiltered working context.
- **Issues** — the public, durable output. The ledger is working memory; issues are the record.
- **Claude's project memory** (`~/.claude/.../memory/`) — also local-only — carries the resume pointer.

## Resuming across sessions (the one-sentence restart)

Context windows are finite; the pattern survives them because everything load-bearing is on disk. To pick up next weekend, tell a fresh observer session:

> *"Resume pair-AI dogfooding on <project>."*

The observer then: reads its project memory → reads the run's `observer-notes.md` ledger → restarts the tail monitor on the driver's transcript directory → announces where things stand. Warm context in under a minute.
