---
description: "Step 0 · Build a one-page mental model of a company and product before any other workflow"
argument-hint: "<company name, optionally the market and the product slice in scope>"
---

Run the **Mental Model Workflow** (`workflows/mental-model/README.md` is canonical). Input from the user: **$ARGUMENTS**

1. **Stage 1 · Research** — follow `workflows/mental-model/01-research.md`: create `runs/<slug>/`, dispatch the Researcher twice in parallel as background sub-agents (broad sweep + "mission, vision and strategy in the company's own words"), and keep going; relay each fact-pack's headlines, sourced, when it lands.
2. **Stage 2 · Build** — follow `workflows/mental-model/02-build.md`: five sections in template order, the PM leads with a hypothesis, you check it in the **primary source** (quote with document and page), label every point fact / inference / question, one question at a time, keep / kill / reword per section.
3. **Stage 3 · Synthesise** — follow `workflows/mental-model/03-synthesise.md`: write `runs/<slug>/mental-model.md` from `workflows/mental-model/templates/mental-model.template.md` with only adopted content; write into a Google Doc or `.docx` only when asked.

Ground rules that bind every stage: verify in the source in the same turn you quote · company vocabulary only · the template bounds the scope, nothing added unasked · headline TAM is headline only, the served base is built bottom-up and cross-checked · ask once.
