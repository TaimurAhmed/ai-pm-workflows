---
description: "Dispatch a research sub-agent (broad sweep or targeted) — keeps working in parallel"
argument-hint: "<topic for a broad sweep, or one specific question>"
---

Run the **Researcher Workflow** (`workflows/researcher/README.md` is canonical). Input from the user: **$ARGUMENTS**

Process:

1. **Pick the mode from the input.** A company/topic name → **broad sweep**; a specific question → **targeted**. Ask at most one clarifying question, and only if genuinely ambiguous.
2. **Dispatch a background sub-agent** (in Claude Code, use a background agent/task so the session keeps moving). Prompt it to use primary sources first and to return a concise, sourced summary with verified vs ⚠️ unverified clearly separated.
   - **Broad sweep covers:** business model & pricing (their trade/customer-facing pages) · filings & financials (Companies House or equivalent) · stated strategy in the company's own words · internal jargon/terminology (what they call each side, their named products) · key public metrics · main competitors · recent product moves.
   - **Targeted covers:** the one question, from the most authoritative source available.
3. **Do not block.** While research runs, continue whatever the user was doing (populating a canvas, drafting). Never stall the time-box waiting for findings.
4. **When findings land:** save a fact-pack to `runs/<slug>/fact-pack-<topic>.md` — sourced claims, verified vs ⚠️ unverified separated, ending with an **"Implications for the canvas"** section. Then tell the user the 3–5 headline learnings and which canvas boxes they touch.
5. Assumptions already flagged ⚠️ on the canvas that the research resolves: update them (fact or corrected), never silently.
