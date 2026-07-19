# High-level user journey — Checkatrade homeowner (first booking)

*Walked first-hand (browser, Apple SSO) on 2026-07-05 by Taimur. Evidence type: anecdotal observation — one user, one session.*

1. **Onboarding (sign-in / registration)** — Apple SSO, smooth. **Pain:** I assumed I was a new user; I was actually returning (jobs from 2025). The platform didn't recognise or use the existing relationship — a point of friction in its own right.
2. **Dashboard** — stale, redundant old jobs surfaced first; confusing. No clear split between active and archived jobs. The platform *has* memory; it's just badly surfaced.
3. **Search** — one-time search experience, clearly well optimised (popular searches → gardening → one-off → general → pruning → postcode). Minor: blocky, hard-to-read form text — low impact.
4. **Listings (PLP) → quote form** — mix of sponsored and individual trades. **Pain:** the group request (best route to a competitive quote) is hidden at the top of the PLP — unnecessary friction; requesting individually is the path of least resistance.
5. **Job details** — the user does the thinking: had to reason through the job and its safety hazards (trimming wisteria on top of a garage) unaided.
6. **Quote sent → wait** — generic "jobs to tackle next" cross-sell (damp, AC, gutters, garden clearance, decking, house cleaning) fired right after goal completion → dismissed with "No thanks". App install nudge. Order confirmation. **Pain:** now I wait for an estimated quote — an open churn window; nothing stops me googling a rival quote in the meantime.
7. **⚠️ Post-job stretch — not walked.** Job completion → review → saving the trade → the next need. This is where repeat usage is actually won or lost (and where the trade can say "call me direct next time"). Deferred: requires a completed job or desk research to verify. Risk carried: our barrier hypotheses for this stretch are unvalidated.

**Screenshot evidence — post-sign-in landing (`/consumer/jobs`, 2026-07-05):**
- Lands on an "unloved jobs tab". Active tab contains jobs from **April 2025 still marked "Active · Contacted"** 14 months on — no job lifecycle (quoted → done → closed). **The platform never learns how jobs end**, so it has no trigger for any post-job loop (review, save-the-trade, seasonal re-engagement like annual boiler service).
- **Inbox badge shows 4 unread messages the user had no idea existed** — trades responded, homeowner never saw it. Notification loop failure that burns both sides: homeowner gets no value; trades learn "Checkatrade leads ghost you."
- Nav contains a **Saved** tab (favourite trades) — a repeat-usage feature that already exists but nothing in the journey drives you to it. Same pattern as the cross-sell: levers exist, no orchestration.
- Another app-install banner (QR) — push notifications are clearly their intended fix for the comms loop.

**Screenshot evidence — Reviews tab:**
- Taimur IS the cohort in the question: successful booking June 2024 (EV charger install, Haigh Electrics, 9.25 review — "polite and professional, I'd recommend"). Full success loop completed, review captured.
- **Twelve months later he had forgotten the job, the trade, and Checkatrade's role in it.** "Checkatrade has faded from my imagination."
- Implication: alongside disintermediation, the possibly *bigger* barrier is **fade** — in low-frequency categories, trust from a great job isn't stolen by the trade; it evaporates. At the next need there's no incumbent, so Google wins by default.
- The platform held everything needed to prevent it: the review is a reliable completion + satisfaction signal, yet no "your trusted trades" memory, no anniversary/seasonal nudge, no "this trade also does X". Recurring pattern: **the assets exist; nothing orchestrates them.**

**The 2025 "Active" jobs — resolved (evidence):**
- Toilet remodel (the two plumbing jobs + boiler): **abandoned mid-funnel.** Quotes/contacts arrived, but working through them was too much effort and there was "no real incentive" to persist. Chose least friction: walked to the local hardware shop, discussed it in person, found a plumber locally.
- Competitor that won = **offline word of mouth**, not a rival app. Quote-comparison burden is a real churn driver mid-funnel.
- Platform still shows these as "Active · Contacted" → trades who responded were ghosted (supply-side burn), and Checkatrade captured no outcome signal.
- Taimur's three jobs = three modes: success→fade (EV charger '24), mid-funnel abandonment→offline (toilet '25), live (pruning '26).

**Step-0 pins:**
- Two-sided platform: homeowners = demand (free), tradespeople = supply (pay to be listed — ⚠️ assumption, verify).
- North Star ≈ jobs successfully completed through the platform; homeowner repeat rate is the compounding input. CLV is the lagging financial outcome, not the North Star.
