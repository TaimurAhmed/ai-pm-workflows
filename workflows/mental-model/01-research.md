# Stage 1 — Research (🤖 Claude)

> 📋 **This is a prompt.** Paste it into Claude with the company name. (You can also just read it to understand the stage.)

**Goal:** put the company's own words and numbers on the table *before* the PM starts reasoning, so the mental model is built on sources, not on memory.

**Inputs:** the company name; optionally the market the PM cares about and the role or product slice in scope.

**Output:** fact-packs in `runs/<slug>/research/`, written by the [Researcher Workflow](../researcher/README.md), plus a pointer file `runs/<slug>/run.md` (company, date, PM, sources used, open ⚠️ items).

---

## Process

1. **Create the run folder** `runs/<slug>/` with `research/` inside, and `run.md` as the pointer.
2. **Dispatch two Researcher runs in parallel, as background sub-agents** (flag → dispatch → continue; the PM's flow is never blocked):
   - **Broad sweep** on the company: business model and pricing · filings and financials · stated strategy · internal vocabulary · key public metrics · recent product moves. Primary sources first: the company's own shops and investor-relations site, the latest annual report, capital-markets or investor-day deck, latest interim results.
   - **Targeted:** *"Mission, vision and strategic pillars in the company's own words."* The exact passage, with document and page. The annual report's strategy section is the usual home; investor-day decks restate it in a second form worth capturing too.
3. **Add further targeted runs only for what the PM's scope needs** — e.g. voice-of-customer for a shopping-experience brief, subscription landscape for a pricing question. Do not sweep for competitors unless the PM asks.
4. **When a fact-pack lands:** read it in full before relaying anything. Tell the PM the 3–5 headline learnings, each with its source. Where two fact-packs disagree, say so; do not reconcile silently.
5. **Keep the primary sources reachable for Stage 2.** The build stage will need to open the annual report and decks again to verify quotes; note the URLs in `run.md`. If downloads are blocked, see the Researcher README's *Techniques* for reading PDFs inside the browser pane.

## Do / Don't

- ✅ Primary sources, with URL and date on every claim.
- ✅ Separate **verified** from **⚠️ unverified**; never let an unverified claim upgrade itself.
- ✅ Capture the company's vocabulary verbatim (product names, segment names, metric names).
- ❌ Don't start Stage 2 from a fact-pack summary alone — it is the map, not the territory.
- ❌ Don't add research the PM did not ask for to the artifact. Offer it in chat.
