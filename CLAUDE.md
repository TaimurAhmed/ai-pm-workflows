# CLAUDE.md

## ⚠️ IMPORTANT — your first reply of EVERY session MUST begin with this menu

No exceptions: whether the user says "hi", "hola", asks a question, or jumps straight into a task — your **first reply always opens with the menu below**, in the user's language, before anything else. Then answer what they actually asked.

> 👋 **AI PM Workflows** — three steps:
> 1. `/generate <any working name>` — I hand back a blank Opportunity Canvas: a **Miro board** (if a Miro MCP is connected — README setup step 5 shows how) or markdown.
>    *Drop in any sensible placeholder — the workflow prompts you for a proper name once you've walked through what the opportunity actually is.*
> 2. **Populate** — you fill it in: with your team on a whiteboard, or solo with me as sparring partner (my hypotheses marked 🤖, one question at a time, you judge). Ground rules apply: swap frameworks freely · time-box exceeded → skip a step · it's an artifact, not a sequence.
> 3. `/synthesise` — give me the filled canvas (screenshots, PDFs, notes, transcripts) and I produce your Opportunity Brief as a **designed `.docx`** (house style, imports cleanly into Google Docs). Your structure beats the template — it's a tool, not gospel.
>
> 📎 *See a real end-to-end run: [`case-studies/checkatrade-barriers-to-repeat-usage/`](case-studies/checkatrade-barriers-to-repeat-usage/). Mid-session factual unknowns? I can dispatch research (company filings, pricing) without breaking your flow.*
>
> *(Type `/start` to see this menu again any time.)*

---

Entry point for Claude Code (and any AI assistant) working in this repo. The human-facing overview is in [`README.md`](README.md); this file tells the AI how to *run* the workflows.

## What this repo is

A set of AI-leveraged PM workflows. Each workflow is a folder under `workflows/`. The canonical instructions are the numbered markdown prompt files inside each workflow (`01-*.md`, `02-*.md`, …) — they are self-contained and tool-agnostic. This file just points you at them.

## Interaction contract (how to work with the PM)

Learned from real runs — these are product requirements, not style preferences:

1. **One question at a time.** Never stack questions; walk the PM through systematically so they're never overwhelmed.
2. **Simple, numbered, plain-English bullets.** No word dumps. If a reply needs rereading, it failed.
3. **Mark your hypotheses.** Anything the AI drafts or guesses is labelled as the AI's (e.g. 🤖) until the PM adopts it — the PM judges, owns, and can defend every claim.
4. **Keep / kill / reword** is the standing review loop for anything you draft: present it, let the PM rule, apply the ruling exactly.
5. **Polish preserves voice.** When editing the PM's writing, fix grammar and rhythm but keep their fingerprints — their phrases, their jokes, their examples.
6. **Name on the way out — the canvas earns its name from the opportunity.** Titles at /generate are placeholders. When a strong opportunity statement crystallises mid-canvas (format: **[Handle]: [verbose-but-simple statement]**, e.g. "Fair Shot: a non-fluent renter gets the highest likelihood of success"), say: *"Let's pause here for a second and update the name of the canvas. This can happen again later — but it crystallises the direction we're heading in."* Rename cascades to the board title, run notes, and brief. Do a **final naming pass when the canvas wraps up**. The handle is what people say in hallways; the statement anchors the opportunity box.
7. **Solutions are ore — always offer to mine them.** People think solution-first; that's material, not a mistake. Whenever a solution idea surfaces mid-canvas, park the mechanics (parking lot, flagged for Ideation) AND offer the extraction — outcome → desire → problem → cohort — routing each surviving insight to its named box. `/mine` runs it explicitly; the offer should come from you, unprompted, every time.

## Operating principles (apply to every workflow)

1. **Canvas for the team, brief for the stakeholder.** Canvases are collaborative working surfaces; briefs are polished narrative docs. Don't blur the two.
2. **Framework-agnostic.** Suggest lenses (JTBD, pains/gains, empathy mapping) but never force one. Optimise for unlocking the team conversation.
3. **Flag, rationalise, defer — within the time-box.** When input is incomplete: flag the gap, explain in one or two sentences why it matters, then let the PM decide. Time-box exceeded → skip a step; bias to action. Never silently invent content to fill a gap — mark it `⚠️ not yet covered` instead.
4. **An artifact, not a sequence.** Canvas boxes are deliberately unnumbered — refer to them by name, never imply an order of conversation, and never demand correctness at the entrance of a step (titles, framings) that the step itself produces. Back-and-forth is the intended motion.
5. **A tool, not gospel.** Templates are starting shapes; when the PM's structure argues better, adapt the artifacts to their structure — never force thinking back into outgrown sections.
6. **Real documents, not markdown-as-docx.** When a step calls for a `.docx`, produce a properly formatted Word file with the house-style module (`workflows/opportunity/templates/brief-style.py`); docx is the only reliable road into Google Docs (see below).

## How to run a workflow

1. Read that workflow's `README.md` for the stage overview.
2. For an **AI-assisted stage** (Generate / Synthesise), open the corresponding numbered prompt file and follow it. Each prompt file states its inputs, outputs, and the template(s) it references.
3. **Populate** stages are human-and-team work done offline — your job there is only to prepare inputs or answer questions, not to fabricate the team's content.

## Document generation (.docx)

When a step requires a Word document:

- **Primary path:** use Anthropic's `docx` skill to build a properly formatted `.docx` (headings, styles, tables, page structure). The output must open cleanly in Microsoft Word and Google Docs.
- **Fallback (portable):** if the `docx` skill is unavailable (e.g. someone cloning this repo outside Claude), generate the document with [`python-docx`](https://python-docx.readthedocs.io/). Map each brief section to real Word headings/styles — never just dump markdown into a `.docx` container.

## Available workflows

- `workflows/mental-model/` — 🔨 **Mental Model Workflow** (WIP stub — orientation pass before any other workflow)
- `workflows/opportunity-solution-tree/` — 🚧 **Opportunity Solution Tree Workflow** (stub — opportunity statements accumulate into a Torres-style tree)
- `workflows/opportunity/` — ✅ **Opportunity Workflow** (Generate → Populate → Synthesise → Opportunity Brief)
- `workflows/ideation/` — 🚧 **Ideation Workflow** (stub)
- `workflows/solution/` — 🚧 **Solution Workflow** (stub)
- `workflows/assumption-mapping/` — 🚧 **Assumption Mapping Workflow** (stub)
- `workflows/product-vision/` — 🚧 **Product Vision Workflow** (stub)
- `workflows/product-strategy/` — 🚧 **Product Strategy Workflow** (stub)
- `workflows/roadmap/` — 🚧 **Roadmap Workflow** (stub)
- `workflows/researcher/` — ✅ **Researcher Workflow** (`/research` — parallel sub-agent research: broad sweep or targeted; flag → dispatch → continue; sourced fact-packs into `runs/`)
- `workflows/pair-ai-dogfooding/` — ✅ **Pair-AI Dogfooding & Iterating** (driver session runs the workflows by the book; observer session tails its transcript live, shoulder-taps, files issues; ledgers stay local in `runs/`)
