# Researcher Workflow ✅

**What it is:** a dispatchable research sub-agent that informs any other workflow — *in parallel*. The PM keeps thinking; the researcher goes and finds out.

**Where it sits:** alongside every workflow, not a stage of any of them. Any canvas box, any brief section, any moment of "I don't actually know that" can dispatch it.

---

## Two modes

**1. Broad sweep — "brief me on everything about this topic."**
Fired at the start of a run (or any time). The sub-agent goes wide on the company/topic: business model and pricing, filings and financials (e.g. Companies House), stated strategy in the company's own words, internal jargon and terminology, key public metrics, competitors, recent product moves. It reports back while the PM populates the canvas — learnings arrive mid-session and get woven in.

**2. Targeted — one factual unknown, one answer.**
Mid-session, a specific question blocks a box ("who actually pays here?"). Flag it, dispatch, *carry on with another box* — never stall the time-box waiting.

## The rule

> **Flag → dispatch → continue.** Research runs in parallel; the PM's flow is never blocked. When findings land, report the 3–5 headline learnings and which canvas boxes they touch.

## Output: the fact-pack

Every dispatch returns a **fact-pack** saved to the run folder (`runs/<slug>/fact-pack-<topic>.md`):

- **Sourced** — every claim carries its source (URLs, filings references).
- **Verified vs ⚠️ unverified** — clearly separated; unverified never silently upgrades to fact.
- **"Implications for the canvas"** footer — what this changes, box by box.

## How to run it

- **Claude Code:** `/research <topic or question>` — dispatches a background sub-agent and keeps the session moving.
- **Anywhere else:** open a second Claude conversation with the research prompt while you keep working in the first.

## Techniques (learned in live runs)

- **Investor PDFs when downloads are blocked.** Open an HTML page on the company's investor-relations origin in the browser pane, then load pdf.js from a CDN in the page and fetch the PDF from the same origin; extract each page's text layer and search it. Direct navigation to a PDF URL often fails in the pane; the same-origin fetch does not.
- **Numbers that live in a chart.** The text layer only yields the footnote. Render the page to a canvas in the browser pane and screenshot it; read the figure off the image and cite the page.
- **One agent, one tab.** Parallel research sub-agents share the driver's browser profile. Each agent opens its own tab with `tabs_create` and works only in that `tabId`; agents never close the pane. The driver treats any tab it did not open as foreign and never assumes the PM is driving it.

## Why it matters

It operationalises **flag, rationalise, defer** with a fourth verb: *fill*. Gaps get flagged *and* filled in parallel, without breaking the time-box.

**Proven live (2026-07-05, first run):** mid-canvas dispatch on Checkatrade's revenue model overturned the working assumption (membership-only → transactional marketplace transition) and rewrote the business case; a second sweep of filings surfaced the company's own strategy language and financials, both of which ended up in the final brief. See [the case study](../../case-studies/checkatrade-barriers-to-repeat-usage/).
