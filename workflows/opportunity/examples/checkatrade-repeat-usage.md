# Worked example — Checkatrade: Barriers to repeat usage

*A real end-to-end run of the Opportunity Workflow (July 2026): a first-hand walked journey → populated canvas → this brief. Produced in response to a live interview prompt; researched via the [Researcher Workflow](../../researcher/) (Companies House filings, pricing pages). Author: Taimur Ahmed · Contributor: Claude, driven by this repo's prompts · Date: 5 July 2026 · Time-box: 90 minutes.*

---

## Summary

This analysis targets **lapsing users**: returning homeowners who previously accepted a quote but have gone quiet (3–6+ months) — the segment with the best impact-to-effort ratio for driving repeat usage, since they don't need to be bought back, only retained. Consequently, this analysis explicitly deprioritises power users and lapsed users — potential target cohorts, but with a weaker impact-to-effort rationale.

Assessing a lapsing user's journey first-hand surfaced three barriers to repeat usage:

1. **Long time to an actionable quote** — high-intent, likely time-poor users are left waiting for quotes and churn while waiting. Competition is faster to serve lapsing repeat users.
2. **Cross-sell with no route to social proof** — inherently shareable jobs (gutters, windows, gardening) can't be shared with the neighbours, tenants and partners who are potential users.
3. **A stale, confusing landing after sign-in** — past converters are dumped on a graveyard of stale "active" jobs instead of being recognised or routed to a clearly optimised search funnel.

Using a simple RICE framework, I prioritised **Barrier 3**: it hurts every returning user, it's high-confidence and low-effort, and it sits at the very top of the repeat-usage funnel.

There is also strategic vision to this — a proposed test-and-learn roadmap:

- **Now** — re-route signed-in users to the homepage, not the Jobs tab.
- **Next** — redesign the Jobs tab around past successes and intelligent cross-sell.
- **Later** — attack quote speed (Barrier 1).
- **Parked** — the sharing/virality play (Barrier 2).

The prize: on a P&L growing ~28% at ~2% margin, retention-led growth is strictly cheaper than bought growth — and repeat demand is the engine of Checkatrade's own directory-to-marketplace transition (Priced Services, Checkatrade Pay).

## 1) Problem statement — information provided

*"Checkatrade's ambition is to become the platform homeowners return to every time they need a tradesperson — not just a one-time search tool."*

1. *What's your hypothesis about the biggest barriers to repeat usage among homeowners who've already had a successful booking?*
2. *What would you prioritise to drive that behaviour, and why?*

## 2) Target customers — who and why

A repeat customer is a user Checkatrade has successfully converted in the past — in plain English: a homeowner who came to Checkatrade looking for a tradesperson and successfully hired one through the platform.

To narrow the target further, this cohort splits into two buckets:

1. Repeat customers we convert again — Checkatrade **power users**.
2. Repeat customers we fail to convert again — Checkatrade **lapsing and lapsed users**.

This analysis prioritises winning **lapsing users**, rather than power users or lapsed users.

**Prioritisation rationale:** simple — power users are already repeating, and winning back lapsed users is expensive. Lapsing users offer the best impact-to-effort ratio: we don't have to buy them back, only build the experience that retains them. With that MVP in place, win-back journeys for fully lapsed users become the natural second act on the roadmap.

**The target cohort: lapsing users** — returning homeowners who previously accepted a quote, last active 3–6+ months ago. These are high-intent users: nobody browses Checkatrade ("CT") for pleasure!

**Key assumption about the CT target customer:** they want quality at the best possible price — no Gumtree cowboy-builder roulette, but competitive quotes from a trusted pool of qualified tradespeople.

## 3) Identifying barriers in the lapsing user's journey

To identify barriers to repeat usage, I assumed the persona of a lapsing user with the objective of hiring a tradesperson on CT — a returning homeowner with a one-off job that could morph into recurring work (trim the wisteria before it reaches the neighbour's shed).

A high-level user journey looks like this:

**Onboarding (sign-in) → Dashboard (Jobs tab) → Search (via homepage) → Listings (PLP) → Enter details → Quote sent to tradespeople → Wait**

## 4) Identified barriers preventing repeat usage

There were several barriers to a successful conversion; three stand out:

**Barrier 1 — Long time to an actionable quote.** Lapsing users are high-intention and likely time-poor — yet they're forced to wait. Three hours after submitting (a lunch and a dog walk later), there wasn't even an estimated quote. In that window, a time-poor, high-intention user will inevitably search for alternatives on Google or TaskRabbit and take their money elsewhere. By the time a tradesperson engages, the homeowner has already left CT!

> *Potential customer: "Too much anxiety waiting for all those quotes — no real incentive to wait… ooh look, I can already hire someone on TaskRabbit!"*

**Barrier 2 — Cross-sell with no route to social proof or growth.** Gutters, window cleaning and gardening are inherently shared jobs — with neighbours, partners and other tenants. When a user submits a quote and is offered these services, not only is Barrier 1 still in play: there is no way to share the job with people who could become leads themselves.

> *Potential customer: "Hmm… wish I could share this job with Hugo. We keep putting it off — we should really find a regular guy."*

**Barrier 3 — Redirected to stale, confusing, distracting data after sign-in.** These users have converted before. Yet the first thing they're shown is an Active jobs tab that can easily be stale — confusing and distracting. A natural opportunity to reinforce sticky behaviour (surfacing past jobs the user reviewed well) becomes a convoluted, stale dashboard that invites disengagement, churn, or confusion.

> *Potential customer: "Why am I seeing 'active' jobs from the last 1–2 years? Ooh look, a distraction — and I'm gone."*

**The returning-user landing is a double failure:** it neither recognises the previously fruitful relationship ("welcome back — here's your trusted electrician") nor routes to the hyper-optimised search funnel. It lands on a graveyard of stale tabs where April-2025 jobs still read "Active · Contacted" — the platform never learns how jobs end, so no post-job loop can ever fire.

## Which barrier should we prioritise?

| Barrier | Reach | Impact | Confidence | Effort | Score |
|---|---|---|---|---|---|
| 1 · Slow to actionable quote | 4 — every returning job-poster | 5 — converts high-intent visits at the moment of decision | 70% — first-person evidence; mechanism obvious | 4 — needs supply-side change (SLAs / instant estimates) | 3.5 |
| 2 · No social sharing on shareable jobs | 2 — subset of jobs, one moment in funnel | 4 — new leads + network effect if it works | 40% — new behaviour, unproven | 3 — group mechanics, pricing, consensus tooling | 1.1 |
| 3 · Stale returning-user landing | 5 — every signed-in returner, unavoidable first touch | 3 — removes a churn trigger, reinforces past success; indirect on conversion | 80% — screenshot evidence; standard fix | **1 — routing + surfacing existing data** | **12.0** |

*RICE = (Reach × Impact × Confidence) ÷ Effort · Reach/Impact scored 1–5 · Effort in relative units · all estimates.*

**Answer: we should prioritise Barrier 3.** In a nutshell: it affects every returning lapsing user and removes a squandered opportunity to drive repeat usage — the problem sits right at the top of a repeat user's conversion funnel. Interestingly, it can likely be resolved via a quick tactical fix (the high-confidence, low-effort solution) and then extended with bolder, more strategic bets.

## What would you prioritise to drive that behaviour, and why?

Based on quick ideation, I'd propose the following product roadmap — a test-and-learn approach to validate whether removing this barrier drives the expected repeat usage among CT users:

- **Now — re-route signed-in users to the homepage** instead of the Active jobs page. Low effort, high impact: the jobs page is stale and its IA is expensive to rework, while the homepage and search experience are already optimised. This is the tactical fix. *(Barrier 3)*
- **Next — redesign the Jobs tab.** Let users re-find tradespeople who did a great job (a stickier experience), remove stale "active" jobs (if they haven't converted in two years, they aren't converting soon), and introduce intelligent cross-selling — there's plenty of data to avoid relying on search alone to convert. *(Barrier 3, strategic)*
- **Later — attack quote speed.** Estimated or instant quotes (e.g. indicative price ranges from historical quote data, response SLAs, expanding Priced Services' instant-booking rails) to close the churn window while high-intent users wait. *(Barrier 1)*
- **Parked — the sharing and virality play.** Let users share jobs and great tradespeople with neighbours, partners and friends — turning satisfied customers into a lead source. High option value, but a new behaviour with unproven demand; revisit once the retention MVP has shipped and read. *(Barrier 2)*

---

*Sources: walked user journey + screenshots · verified fact-packs on revenue model, filings and jargon (Companies House, join.checkatrade.com, checkatrade.com). All estimates and assumptions marked inline.*
