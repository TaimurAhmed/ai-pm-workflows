# Mental Model Workflow ✅

**Where it sits:** before everything — the orientation pass. Whether you're onboarding into a new company, running a case study, or walking into an interview, the same grounding applies before any specific question. Do it once; every downstream workflow (Opportunity, Ideation, Solution) inherits the context. The Opportunity canvas's "Step-0 pins" and the Researcher's "Implications for the canvas" both point back here.

**What it produces:** a **one-page mental model** the PM can hold in their head — five sections, every line labelled **fact** (with source and page) or **inference**, saved as markdown in the run folder and, on request, written into a Google Doc or `.docx`.

**Proven live (2026-11, first full run):** a listed consumer-hardware company worked from zero to a defensible one-pager in one sitting — mission and vision quoted from the annual report itself, market size and penetration verified in the capital-markets deck (including a chart that had to be rendered to be read), a North Star pair the PM defined and defended, and a market priority argued from the company's own disclosed numbers. Promoted as a case study after the engagement closed.

---

> ▶ **New here?** Type `/mental-model <company>` in Claude Code (or paste [`01-research.md`](01-research.md) into Claude) and go.

## The three stages

| Stage | Who | What happens | File |
|---|---|---|---|
| **1. Research** | 🤖 Claude | Dispatches the [Researcher](../researcher/) twice before any thinking: a broad sweep, and a targeted "mission, vision and strategy in the company's own words". Primary sources only. Fact-packs land in `runs/<slug>/research/`. | [`01-research.md`](01-research.md) |
| **2. Build** | 👤 PM + 🤖 Claude | Sparring, section by section, in the template's order. **The PM leads with a hypothesis; Claude checks it against the sources** and answers keep / kill / reword. One question at a time. Open items logged, asked once. | [`02-build.md`](02-build.md) |
| **3. Synthesise** | 🤖 Claude | Writes the one-pager from the template, with only what the PM adopted. Markdown in the run folder; Google Doc or `.docx` on request. | [`03-synthesise.md`](03-synthesise.md) |

---

## The five sections (overview)

The full template lives in [`templates/mental-model.template.md`](templates/mental-model.template.md).

1. **Ecosystem** — what world the product lives in, in one or two sentences. No competitor analysis here; that is a workflow of its own.
2. **Company** — vision, mission, strategic pillars, and the money (revenue, gross margin, revenue mix), with **one** subtitle naming the source document. Quoted, not paraphrased.
3. **Product** — what it is in plain words, then three sides: **demand** (users · customer — they are not always the same people), **supply** (who provides what the product sells), **channels** (what each channel is for, in the company's own words).
4. **The product in scope** — the slice the PM owns: its purpose inside the mission, its North Star (one metric or a defended pair), and the open definitions still to pin.
5. **Where to focus** — headline addressable market, the served-market base built bottom-up from stated assumptions, disclosed penetration by segment, the priority market and why, and the designed-for user.

---

## Ground rules (learned in the first run — these are product requirements)

- **Verify in the primary source in the same turn you quote it.** A fact-pack is a pointer to the source, not the source. Mission and vision come from the annual report's own page, not from a summary of it.
- **Fact or inference, on every line.** Fact carries document and page. Inference from general knowledge says so, and names what would verify it.
- **The template bounds the scope.** Nothing is added unasked. A section the PM did not ask for is offered in chat, never written into the artifact.
- **Headline TAM is headline only.** The served-market base is built bottom-up from the PM's stated assumptions (anchor one market, derive the rest by ratio) and cross-checked against the company's own disclosed counts (installed base, penetration). A split that fails the cross-check is said to fail.
- **Company vocabulary only.** Names for products, segments and metrics come from the sources. A term not found in any source is logged as ⚠️ unverified and never used.
- **The PM's metric is the PM's decision.** Claude checks what a proposed North Star rewards and what it is blind to, says so once, then adopts the PM's ruling.
- **Ask once.** An open definition (e.g. what counts as an "interaction") is logged in the one-pager's open items and not re-raised.

---

## Worked example

First full run: see [`case-studies/`](../../case-studies/) once promoted. Until then, the structure above *is* the worked example — it was written from that run's output, not before it.
