# Stage 3 — Synthesise (🤖 Claude)

> 📋 **This is a prompt.** Paste it into Claude along with your populated canvas (screenshots, transcripts, notes) and the brief template. (You can also just read it to understand the stage.)

**Goal:** turn the *populated, messy* Opportunity Canvas into a polished **Opportunity Brief** — a shareable narrative document, delivered as a properly formatted **`.docx`**.

This is the *canvas → brief* translation: from the team's working surface into a doc a stakeholder can read alone.

**Inputs:**
- The populated canvas in whatever form it exists: **screenshots, transcripts (Granola/Otter), chat logs, raw notes.**
- The brief template: [`templates/opportunity-brief.template.md`](templates/opportunity-brief.template.md).

**Output:** an **Opportunity Brief `.docx`** that opens cleanly in Microsoft Word *and* Google Docs, following the template's section structure and formatting.

---

## Prompt

> You are helping a product manager run the **Synthesise** stage of the Opportunity Workflow. You will receive the populated Opportunity Canvas as messy input (screenshots, transcripts, chat logs, notes) and the brief template at `templates/opportunity-brief.template.md`. Produce a polished **Opportunity Brief** as a formatted `.docx`.
>
> **Process:**
> 1. **Extract** everything from the inputs, mapping canvas content to the brief's sections.
> 2. **Synthesise, don't transcribe.** Turn scattered stickies and tangents into a coherent narrative. The BLUF and SCQA sections must *read* as argument, not as a list of notes.
> 3. **Flag, rationalise, defer.** Where the canvas left a gap, do **not** invent content. Insert a clearly marked `⚠️ Not yet covered — <one line on why it matters / the risk>` and move on. Optional sections not done (e.g. GMV/TAM) are marked **"Not covered this iteration."**
> 4. **Keep the customer the spine.** The opportunity thesis must tie back to the customer problem, not start from the solution.
> 5. **Generate the `.docx`** with real Word formatting (see below) — never markdown renamed to `.docx`.
>
> Before finalising, give the PM a short list of (a) the gaps you flagged and (b) any places you made an interpretive judgement call, so they can correct you.

---

## Brief structure (from the template)

1. **Metadata** — title, author, contributors, date.
2. **BLUF** — the full thesis in 3–5 lines, up top.
3. **SCQA narrative:**
   - *Why the customer cares* — the opportunity (canvas box 1) → cohorts (box 3) → empathy evidence (box 2) → pains/gains.
   - *Why the business cares* — impact → potential.
   - *Competitor analysis* — solutions today.
4. **The opportunity** — the thesis, tied back to the customer. Optional GMV/TAM (mark "Not covered this iteration" if skipped).
5. **HMWs** — How-Might-We questions from canvas box 6, each mapped back to the opportunity (box) it addresses.
6. **HMWs stack-ranked** — ordered by impact (canvas box 7), to tee up ideation.

---

## Producing the `.docx` — real Word formatting

The brief is a **stakeholder deliverable**. It must be a properly structured Word document, not markdown in a `.docx` wrapper.

- **Primary path — Anthropic `docx` skill.** Use it to build the document with real heading styles (Title, Heading 1/2), body styles, a metadata block, and tables for the competitor analysis and stack-rank. Verify it opens cleanly in Word and Google Docs.
- **Fallback — `python-docx`** (for anyone running this outside Claude): build the same structure programmatically. Map each brief section to a Word heading; use `add_table` for competitor analysis and the HMW stack-rank; apply consistent styles. See <https://python-docx.readthedocs.io/>.

**The template is a tool, not gospel.** The brief template is a *starting shape*. When the PM's structure argues better — RICE instead of a stack-rank, a Now/Next/Later/Parked roadmap instead of an HMW list, customer voice quotes instead of an empathy grid — the PM's structure wins and you adapt to it. Never force content back into template sections the thinking has outgrown; the template serves the argument, not the other way round.

**docx is the only road into Google Docs.** Never push raw HTML at Drive (it mangles styling); never rely on markdown paste (it mangles tables). Build the `.docx` with the house-style module at [`templates/brief-style.py`](templates/brief-style.py) — a parameterised design system (adapt the palette to the target company's brand per run) — and let the user import it via Google Docs → File → Open → Upload.

**Design bar — the brief is marketing as much as substance.** Default python-docx/plain-Word output is not acceptable. Style it like a consulting deliverable: borrow the company's brand palette (e.g. their navy + accent colour), a designed title block (status chip, title, coloured subtitle, metadata strip), colour-barred callout boxes for the BLUF / key insights / open TBAs, banded tables with a solid header row instead of full grids, and a footer with author + page numbers. A stakeholder should locate the thesis and the open questions in a three-second skim.

**Formatting checklist:**
- [ ] Title + metadata block at the top (author, contributors, date).
- [ ] BLUF visually distinct (e.g. a callout/quote style or bold lead).
- [ ] Headings use real Word heading styles (navigable in the document outline).
- [ ] Competitor analysis as a **table**.
- [ ] HMW stack-rank as a **numbered/ranked table**.
- [ ] Gaps shown as visible `⚠️` flags, not silently omitted.
- [ ] Opens cleanly in both Word and Google Docs.
