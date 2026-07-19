# AI-Leveraged PM Workflows

A living, opinionated set of product-management workflows I actually use — designed so an AI assistant (Claude) can help *run* them, not just store templates. Each workflow pairs **collaborative canvases** (for the team) with **synthesised briefs** (for stakeholders), and gives the AI enough context to generate starting artifacts and turn messy collaborative input into polished deliverables.

This repo is two things at once: a **real tool** I use at work, and a **portfolio piece** showing how I think about product discovery and delivery.

---

## Getting started

### Setup (one-time)

1. **Install Claude Code** — follow [these instructions](https://docs.claude.com/en/docs/claude-code/overview). (Or skip this and use [claude.ai](https://claude.ai) — see the note at the bottom.)
2. **Clone this repo:**
   ```bash
   git clone https://github.com/TaimurAhmed/ai-pm-workflows.git
   ```
   *Tip: for a specific engagement, clone into a project-named folder instead — e.g. `git clone <url> pm-workflows-checkatrade` — so each project keeps its own `runs/` history.*
3. **Open it in Claude Code:**
   ```bash
   cd ai-pm-workflows && claude
   ```
   Claude reads [`CLAUDE.md`](CLAUDE.md) automatically, so it already knows how to run the workflows. *(First run will ask you to `/login`.)*
4. **Optional — better Word output:** install Anthropic's document skills so `/synthesise` can use the full `docx` toolchain:
   ```
   /plugin marketplace add anthropics/skills
   /plugin install document-skills
   ```
   Then restart the session (skills load at startup). Without this, briefs still work — the workflow falls back to [`python-docx`](https://python-docx.readthedocs.io/) with the built-in house style. To install it:
   ```bash
   pip3 install -r requirements.txt
   ```
   ⚠️ **On macOS (Homebrew/recent Python) that command may fail with `externally-managed-environment`.** That's Python protecting system packages ([PEP 668](https://peps.python.org/pep-0668/)), not a broken setup — use a virtual environment instead:
   ```bash
   python3 -m venv .venv && .venv/bin/pip install -r requirements.txt
   ```
   (Claude will find and use the venv's Python automatically when generating your brief.)
5. **Optional — Miro boards:** `/generate` can build your Opportunity Canvas as a real **Miro board** (from a hand-tuned golden template, in a single call) instead of markdown — but only if a Miro MCP is connected. Two ways, run inside Claude Code:
   - **Official Miro plugin** (MCP + skills):
     ```
     /plugin marketplace add miroapp/miro-ai
     /plugin install miro@miro-ai
     ```
   - **Or the remote MCP server directly** (OAuth in your browser on first use):
     ```bash
     claude mcp add --transport http miro https://mcp.miro.com
     ```
   No Miro? Skip this — everything works in markdown, and you can paste a bulleted canvas into any whiteboard tool.
6. **Optional — PDF export:** briefs are `.docx` (they import cleanly into Google Docs). If you want a PDF alongside, either export from Word/Google Docs (one click) or install [LibreOffice](https://www.libreoffice.org/) (~1 GB — `brew install --cask libreoffice`) and Claude can render PDFs locally.

### Run your first workflow (Opportunity)

1. **Step 1 · Generate** — type `/generate` followed by a canvas title (who's struggling with what), e.g. `/generate Homeowners don't rebook after their first job`. Claude hands back a blank Opportunity Canvas (saved under `runs/`).
2. **Step 2 · Populate** — your team fills the canvas in together on a whiteboard. This stage is human; no AI.
3. **Step 3 · Synthesise** — type `/synthesise` and follow along: Claude asks for the filled-in canvas (screenshots, PDFs, notes) and the metadata it needs, then returns a polished Opportunity Brief as a Word doc.

*(Lost at any point? Type `/start` for the menu.)*

👉 New here? Just do the setup, then **Step 1 · Generate**.

> **No Claude Code?** You don't need it. Open any prompt file (e.g. [`01-generate.md`](workflows/opportunity/01-generate.md)), copy its contents into [claude.ai](https://claude.ai), and paste your inputs underneath.

---

## Workflow index

Workflows are added incrementally. Status: ✅ complete · 🚧 coming soon.

| Workflow | What it produces | Status |
|---|---|---|
| [Mental Model Workflow](workflows/mental-model/) | Orientation pass: ecosystem → company mission → product purpose → North Star | 🚧 WIP |
| [Opportunity Solution Tree Workflow](workflows/opportunity-solution-tree/) | Opportunity statements from canvas runs, accumulated into a Torres-style tree | 🚧 Coming soon |
| [Opportunity Workflow](workflows/opportunity/) | Opportunity Canvas → Opportunity Brief | ✅ Complete |
| [Ideation Workflow](workflows/ideation/) | Stack-ranked HMWs → candidate solution directions | 🚧 Coming soon |
| [Solution Workflow](workflows/solution/) | Solution Canvas → Solution Doc | 🚧 Coming soon |
| [Assumption Mapping Workflow](workflows/assumption-mapping/) | Assumption map → riskiest assumptions to test | 🚧 Coming soon |
| [Product Vision Workflow](workflows/product-vision/) | Vision narrative — where we're going and why it wins | 🚧 Coming soon |
| [Product Strategy Workflow](workflows/product-strategy/) | Strategy doc — the choices that get us there | 🚧 Coming soon |
| [Roadmap Workflow](workflows/roadmap/) | Now / Next / Later roadmap tied to the strategy | 🚧 Coming soon |
| [Researcher Workflow](workflows/researcher/) | `/research` — parallel sub-agent fact-packs (broad sweep or targeted) informing any workflow | ✅ Complete |
| [Pair-AI Dogfooding & Iterating](workflows/pair-ai-dogfooding/) | Driver session dogfoods; observer session watches live, files issues, crystallises | ✅ Complete |
| _Future workflows_ | — | 🚧 Coming soon |

> The double-diamond workflows above cover discovery through delivery — but PM-ing doesn't stop and end there. Vision, strategy, and roadmap sit *above* the diamonds and give them their direction; they're on the roadmap for this repo too.

---

## Case studies — real runs, real outputs

| Case study | What it shows | Artifacts |
|---|---|---|
| [Land a flat in Germany without the German](case-studies/land-a-flat-in-germany-without-the-german/) | Full Opportunity Workflow run in Pair-AI Dogfooding mode: Miro canvas → evidence-backed prioritisation → designed brief | Brief (.docx) · board · golden template |
| [Checkatrade: barriers to repeat usage](case-studies/checkatrade-barriers-to-repeat-usage/) | The first live run — a cold domain worked to an evidence-backed roadmap in a 90-minute time-box: walked user journey → canvas → RICE → Now/Next/Later/Parked, with mid-canvas research on real company filings | Brief · populated canvas · walked journey · fact-packs |

---

## The mental model: a double diamond with canvases at the waists

These workflows map to the classic **double diamond** (discover → define → develop → deliver). **My canvases sit at the pinch points — the waists — not stretched across the whole diamonds.**

![Double diamond with the Opportunity Canvas at the convergent close of diamond one and the Solution Canvas at the divergent open of diamond two, ideation bridging the two, and unstructured research and Jira backlog refinement happening off-canvas at the edges.](assets/double-diamond.svg)

- **Opportunity Canvas** sits at the **convergent close of diamond one** — you've done the wide divergent discovery and now need to *align on the opportunity worth pursuing*.
- **Solution Canvas** sits at the **divergent open of diamond two** — you start *generating and shaping solutions*.
- **Ideation bridges the middle**, carrying you from problem-alignment into solution-divergence.
- The **wide divergent discovery** (e.g. user research, data mining, canvassing the team for opinions) and the **narrow delivery tail** (e.g. Jira tickets, backlog refinement) happen **off-canvas**.

**Why off-canvas at the edges?** Canvases earn their place only at the moments that need *structured, collaborative alignment*. Wide discovery is messy and exploratory by design; the delivery tail is granular execution — forcing a canvas onto either just adds ceremony. I may build AI workflows for those ends later, but that work rarely transfers between organisations, so it's not where I chose to invest first.

---

## Core philosophy

**1. Canvas for the team, brief for the stakeholder.**
Canvases are messy collaborative surfaces (the whiteboard); briefs are the polished narrative a stakeholder reads alone. The AI translates one into the other.

**2. Framework-agnostic, not framework-averse.**
JTBD, pains/gains, empathy mapping — slot them in and out freely; use whatever unlocks the conversation. Stack-rank on SWAGs? Cool. Quotes over JTBD? Happy days. The framework serves the discussion, not the other way round.

**3. Flag, rationalise, defer — within the time-box.**
When input is thin, the AI flags the gap, says why it matters, and lets the PM decide. Time-box exceeded? Skip a step — bias to action. The goal is reducing decision risk, not chasing completeness.

**4. An artifact, not a sequence.**
The canvas captures insight however your team works — fill it in any order, or all at once. No magic sequence of conversation produces a silver-bullet opportunity.

---

## How the AI leverage works

Every workflow is built so Claude can help run it. Two stages of each workflow are AI-assisted:

- **Generate** — Claude produces a *blank, well-structured artifact* (e.g. an Opportunity Canvas) for the team to populate.
- **Synthesise** — Claude takes the *populated, messy* artifact (screenshots, meeting transcripts, chat logs) plus a template and produces a *polished deliverable* (e.g. an Opportunity Brief as a formatted `.docx`).

The instructions that drive this live as **markdown prompt files** inside each workflow folder (canonical, tool-agnostic — paste into any Claude), with a thin [`CLAUDE.md`](CLAUDE.md) so the repo also "just works" when opened in Claude Code.

> **Document generation note:** the Synthesise step produces a **properly formatted Word document**, not markdown renamed to `.docx`. See each workflow's `03-synthesise.md` for how this is done — Anthropic's `docx` skill is the primary path; `python-docx` is noted as a portable fallback.

---

## Repo structure

```
ai-pm-workflows/
├── README.md                  ← you are here
├── CLAUDE.md                  ← entry point for Claude Code
└── workflows/
    ├── opportunity/           ← ✅ Opportunity Workflow
    │   ├── README.md
    │   ├── 01-generate.md
    │   ├── 02-populate.md
    │   ├── 03-synthesise.md
    │   └── templates/
    │       ├── opportunity-canvas.md
    │       └── opportunity-brief.template.md
    └── solution/              ← 🚧 Solution Workflow (stub)
        └── README.md
```

---

## License & attribution

Licensed under [MIT](LICENSE).

The Opportunity Canvas schema is inspired by **Jeff Patton's [Opportunity Canvas](https://www.jpattonassociates.com/opportunity-canvas/)**, with opportunity framing after **Teresa Torres** (problems + desires = opportunities), pains/gains after **Alex Osterwalder**, and empathy mapping after **Dave Gray**. Narrative structuring draws on **SCQA** (Barbara Minto's *Pyramid Principle*) and **BLUF** (bottom line up front). These are adapted, not reproduced — credit to the originators.
