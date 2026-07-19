---
description: "Step 3 · Synthesise your populated canvas into an Opportunity Brief (.docx)"
argument-hint: "[optionally point at your inputs: screenshots, PDFs, notes]"
---

Run **Step 3 · Synthesise** of the Opportunity Workflow. Follow the full instructions in `workflows/opportunity/03-synthesise.md` — that file is canonical; this command just invokes it.

Inputs the user pointed at (may be empty): **$ARGUMENTS**

Process:

1. **Collect the inputs.** Ask the user for the populated canvas in whatever form exists — screenshots of the whiteboard, transcripts, chat logs, PDFs, raw notes. If a `runs/<slug>/` folder exists from `/generate`, look there first.
2. **Final naming pass first:** now that the opportunity is mapped, offer to (re)name the canvas from its opportunity statement — **[Handle]: [statement]** — with 1–2 candidates drawn from the opportunity box. The user picks or keeps the current name; a rename cascades to the board title, run notes, and brief title. Then **ask for the remaining metadata**: author, contributors, date.
3. **Synthesise** per `03-synthesise.md`, filling `workflows/opportunity/templates/opportunity-brief.template.md`: BLUF, SCQA narrative, the opportunity, HMWs mapped back to the opportunities they address, HMWs stack-ranked. Flag gaps as `⚠️ Not yet covered — <why it matters>`; never invent content. Mark skipped optional sections "Not covered this iteration."
4. **Produce the `.docx`** with real Word formatting (Anthropic docx skill; `python-docx` fallback) into the same `runs/<slug>/` folder. Before finalising, list (a) flagged gaps and (b) interpretive judgement calls so the PM can correct them.
