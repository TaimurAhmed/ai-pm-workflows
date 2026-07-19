# Stage 1 — Generate (🤖 Claude)

> 📋 **This is a prompt.** Paste it into Claude along with your canvas title. (You can also just read it to understand the stage.)

**Goal:** produce a *blank* Opportunity Canvas the team can populate. You are creating the working surface, not filling it in.

**Inputs:** a canvas title (who's struggling with what), plus optionally the team involved and a session time-box.

**The schema is canonical.** Box titles, tips, and ground rules come verbatim from [`templates/opportunity-canvas.md`](templates/opportunity-canvas.md) — the boxes are deliberately unnumbered (no prescribed order; refer to them by name). Do not invent, reword, or "improve" them — the template is designed; your job is to instantiate it.

---

## Surface — offer the best one available, in this order

1. **Miro board** (only if a Miro MCP is connected): instantiate the golden template [`templates/opportunity-canvas.miro.dsl`](templates/opportunity-canvas.miro.dsl) — substitute `{{TITLE}}`, then send its non-comment lines in **one** `layout_create` call. Every coordinate is the user-tuned frozen layout; never re-derive geometry (it wastes tokens and introduces errors). Board named `Opportunity Canvas: <run folder name>`. **After building, read the board back and verify** nothing overlaps or crosses a cell edge; fix before reporting done. Record the board URL in the run's `run.md` pointer. The DSL's header comments carry the sticky taxonomy, overflow ladder, and builder cautions — they bind every board edit.
2. **Markdown file** — the universal default; works everywhere. If no Miro MCP is available, use this without interrogating the user (one-line tip that connecting the Miro MCP unlocks board creation is fine — connection instructions are in the main README's setup, step 5). On request, also give a paste-into-Miro variant: a plain bulleted list per section — Miro turns pasted bullets into stickies.

**One surface only — never both.** Miro board created → no markdown canvas; save only a pointer file (`runs/<slug>/run.md`: title, board URL, date, team/time-box, fact-pack links). Markdown chosen → the canvas file IS the surface. Synthesise reads the populated board directly (Miro MCP or screenshots) — it does not need a text twin. *(A dual-canvas mode with the AI as sync engine is a parked idea — see the issue backlog.)* **Naming:** the canvas H1 (and Miro board name) is `Opportunity Canvas: <run folder name>` — artifact and folder always match.

---

## Process

1. If no canvas title was given, ask: "What should this canvas be called? A good title names who's struggling with what — e.g. 'Homeowners don't rebook after their first job'." Also ask (once, briefly) for the team involved and the session time-box; if the user skips these, proceed and flag them ⚠️ on the canvas rather than stalling.
2. Instantiate the template: all seven boxes, each **empty**, with its tip; ground rules outside the canvas; title, team, and time-box filled in.
3. Tell the user where everything is and what happens next: **Step 2 · Populate** — their team fills it in on a whiteboard, then they run `/synthesise` with the results.

## Do / Don't

- ✅ Sections and tips verbatim from the template.
- ✅ Leave every section **empty** — the content belongs to the team.
- ✅ Include the ground rules: frameworks swap freely; time-box exceeded → skip a step; it's an insight-capture artifact, not a sequence.
- ❌ Don't pre-fill the team's answers.
- ❌ Don't force a framework, or imply the numbering is a script.
- ❌ Don't invent board geometry — the JSON spec is the layout.
