---
description: "Step 1 · Generate a blank Opportunity Canvas"
argument-hint: "<canvas title — who's struggling with what>"
---

Run **Step 1 · Generate** of the Opportunity Workflow. Follow the full instructions in `workflows/opportunity/01-generate.md` — that file is canonical; this command just invokes it.

Canvas title given by the user: **$ARGUMENTS**

**The template is designed — instantiate it, don't improvise it.** Box titles, tips, and ground rules come verbatim from `workflows/opportunity/templates/opportunity-canvas.md` (boxes are deliberately unnumbered — refer to them by name). The Miro layout (every coordinate) comes from `workflows/opportunity/templates/opportunity-canvas.miro.json`.

Process:

1. If no title was given above, ask: "What should this canvas be called? A good title names who's struggling with what — e.g. 'Homeowners don't rebook after their first job'." Also ask (once, briefly) for the team involved and the session time-box; if the user skips these, proceed and flag them ⚠️ on the canvas rather than stalling.
2. **Ask where they want the canvas** (canvases live on whiteboards, so offer the best surface available):
   - **Miro board** — only offer if Miro MCP tools are available (check via ToolSearch for `miro`). Build it from the JSON layout spec: place cells (plain resizable shapes), titles, tips, and ground rules exactly where the spec says. Board named `Opportunity Canvas: <run folder name>`. **Verify before finishing:** read the board back and check nothing overlaps or crosses a cell edge; fix anything that does.
   - **Markdown file** — always available; the universal default. If no Miro MCP is connected, don't interrogate — just use markdown and add one line: "Tip: if you use Miro, connect the Miro MCP and I can build the board for you next time." Offer a paste-into-Miro variant on request (a plain bulleted list per section — Miro converts pasted bullets into stickies).
3. **Whichever surface was chosen, always save the markdown copy** to `runs/<slug>/opportunity-canvas.md` (create the folder; short kebab-case slug from the title) — sections and tips verbatim from the template, all sections empty. This is the archival reference for `/synthesise`. **If a Miro board was created, record its URL at the top of the markdown copy.**
4. **Naming convention:** the canvas H1 is `Opportunity Canvas: <run folder name>` — artifact and folder must always match (same for the Miro board name).
5. Tell the user where everything is and what happens next: **Step 2 · Populate** — their team fills it in on a whiteboard, then they run `/synthesise` with the results.
