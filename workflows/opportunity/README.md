# Opportunity Workflow ✅

**Where it sits:** the convergent close of **diamond one** — you've done wide, unstructured discovery and now need to *align the team on the opportunity worth pursuing* before ideating.

**What it produces:**
1. A populated **Opportunity Canvas** (the team's shared working surface)
2. A polished **Opportunity Brief** as a formatted `.docx` (the stakeholder's narrative doc)

**Inspired by** Jeff Patton's [Opportunity Canvas](https://www.jpattonassociates.com/opportunity-canvas/), adapted with Teresa Torres's opportunity framing (problems + desires = opportunities), an evidence-first empathy pass, and an HMW exit that tees up ideation.

---

> ▶ **New here?** Type `/generate <canvas title>` in Claude Code (or paste [`01-generate.md`](01-generate.md) into Claude) and go. The three stages below explain the full flow.

## The three stages

| Stage | Who | What happens | File |
|---|---|---|---|
| **1. Generate** | 🤖 Claude | Produces a blank, well-structured Opportunity Canvas for the team to fill in — a **Miro board** built from the golden template in one call (if a Miro MCP is connected), or markdown. The title at this stage is a placeholder: the canvas earns its name on the way out, once you know what the opportunity actually is. | [`01-generate.md`](01-generate.md) |
| **2. Populate** | 👥 Team | The team fills the canvas in offline, collaboratively (Miro / whiteboard). | [`02-populate.md`](02-populate.md) |
| **3. Synthesise** | 🤖 Claude | Takes the messy populated canvas (screenshots, transcripts, chat) + the brief template and produces the Opportunity Brief `.docx`. | [`03-synthesise.md`](03-synthesise.md) |

> **Ideation happens off-canvas.** The canvas closes with a stack-rank of HMWs that *tees up* ideation — but the divergent solution-generation itself belongs to the [Ideation Workflow](../ideation/), not this one.

---

## Canvas schema (overview)

This is the empty canvas `/generate` hands back:

![The empty Opportunity Canvas: a red dashed ground-rules banner on top; seven unnumbered boxes — why the customer cares, empathy mapping, cohorts, solutions today, why the business cares, how-might-we, impact stack-rank; a giant "tees up ideation (off-canvas)" signpost off the right edge; and a Parked Solutions frame below.](assets/opportunity-canvas.svg)

*Rendered from the [golden Miro template](templates/opportunity-canvas.miro.dsl) — a layout frozen from a real run's hand-tuned board, which the AI instantiates in a **single call**: zero geometry guessing, zero wasted tokens.*

The full schema lives in [`templates/opportunity-canvas.md`](templates/opportunity-canvas.md). The boxes — **deliberately unnumbered; start anywhere**:

- **Why should the customer care? — Problems + desires = customer opportunity** — motivation → desire + problem → the opportunity (Torres).
- **Empathy mapping** — context (what/why/when/where/how, feelings), then gains and pains, collaboratively.
- **User & customer cohorts** — each side of the platform; you design for a specific cohort.
- **Solutions today** — competitors, operational processes, existing features — or living with it.
- **Why the business should care** — a number the business tracks; cost of doing nothing; t-shirt sizing or TAM.
- **How might we…?** — HMW questions from across the canvas, each mapped back to its box by name.
- **Impact stack-rank** — rank the HMWs; tees up ideation (off-canvas).
- **Parked Solutions** *(frame, below the canvas)* — people think solution-first, and that's ore, not a mistake: mechanics get parked here, then mined (`/mine`: outcome → desire → problem → cohort) back into the boxes above.

Ground rules sit outside the canvas: frameworks slot in and out freely · time-box exceeded → skip a step · no numbers, no sequence — an insight-capture artifact · a tool, not gospel.

---

## Brief structure (overview)

The full template lives in [`templates/opportunity-brief.template.md`](templates/opportunity-brief.template.md). Sections:

1. **Metadata** — title, author, contributors, date.
2. **BLUF** — full thesis in 3–5 lines.
3. **SCQA narrative** — why the customer cares (opportunity → cohorts → empathy evidence, pains/gains) → why the business cares (impact → potential) → solutions today.
4. **The opportunity** — the thesis, tied back to the customer (optional GMV/TAM; mark "not covered this iteration" if skipped).
5. **HMWs** — How-Might-We questions from canvas box 6, mapped to the opportunities they address.
6. **HMWs stack-ranked** — by impact (canvas box 7), to tee up ideation.

---

## Worked example

A real end-to-end run — walked journey → populated canvas → brief, answering a live interview prompt:
**[Checkatrade: Barriers to repeat usage](examples/checkatrade-repeat-usage.md)**

---

## ⚠️ Template files

Working **example** versions ship in `templates/` so the workflow runs out of the box — **replace the first two with your own** when ready (each file is marked at the top):

- [`templates/opportunity-canvas.md`](templates/opportunity-canvas.md) — the canvas schema Claude generates from (titles, tips, ground rules — the single source of truth for content).
- [`templates/opportunity-brief.template.md`](templates/opportunity-brief.template.md) — the empty brief Claude fills during Synthesise.
- [`templates/opportunity-canvas.miro.dsl`](templates/opportunity-canvas.miro.dsl) — the **golden Miro layout** `/generate` instantiates in one `layout_create` call (frozen from a hand-tuned real board; its header comments carry the sticky taxonomy and board-editing rules). Re-freeze it from a board you've re-tuned rather than editing coordinates by hand.
