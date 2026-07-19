# Opportunity Canvas: checkatrade-homeowner-repeat-usage

**Team:** Taimur (PM) + Claude (sparring partner — hypotheses marked 🤖)  ·  **Time-box:** 60 min

> Working surface. Evidence base: [user-journey.md](user-journey.md) (walked journey, screenshots, three first-person job outcomes). Ground rules apply: frameworks slot in and out; time-box exceeded → skip a step; not a sequence.

---

## 1. Customer problem & desire — the opportunity
> **Tip:** what's the customer trying to do — where, when, why? What gets in the way = the problem. What they wish were true = the desire. Problems + desires = opportunities (Teresa Torres).

**Trying to do:** a returning homeowner getting a one-off job done that could morph into recurring (e.g. trim the wisteria before it grows into the neighbour's garage).

**Opportunity A — the intent-speed gap (in-need).**
- Problem: high intention, forced to wait for quotes. Anxious to start; the wait is an open churn window.
- In that window a competitor (e.g. TaskRabbit) shows a tradesperson's rate instantly → convert there before Checkatrade trades respond. Quality is Checkatrade's USP, but at high intent, *time-to-a-price beats quality promises*.

**Opportunity B — neighbourhood recurring jobs (shared-need).**
- Recurring outdoor jobs (gutter cleaning, window cleaning) are street-level economics: neighbours pool costs; winning trades have neighbourhood density; area is price-sensitive.
- Problems today: no way to judge whether a quote is competitive/quality; no incentive to convert vs. Google/TaskRabbit; no mechanism *or* incentive to share with neighbours — driving consensus falls entirely on one homeowner.
- Desire: neighbourhood-level prices without being the neighbourhood organiser. (Solution idea parked for box 6: shareable code. 🅿️)

**Opportunity C — the fade (between-need).**
- Evidence: 9.25-reviewed success in June 2024, completely forgotten a year later — "Checkatrade has faded from my imagination."
- In low-frequency categories trust isn't stolen, it evaporates; at the next need there's no incumbent and Google/habit wins by default.
- Desire: someone keeps the relationship warm so the next job starts from trust, not from search.

*Note: A = be fast when I'm hot · C = be remembered when I'm cold · B = make me valuable to my street. Different mechanisms — rank separately in box 7.*

## 2. Empathy pass
> **Tip:** what do they say / think / do / feel? Use real evidence — customer quotes, interviews, research, session recordings, anecdotal observations. Mark the rest as guesses. Pains and gains feed back into box 1.

*Evidence: first-person walked journey + screenshots (see user-journey.md). Mock-case assumption: this experience is treated as representative of the cohort. ⚠️ In a real engagement, validate with interviews/analytics.*

- **Say:** "It was just too much effort going through all those quotes — no real incentive." · "Checkatrade has faded from my imagination."
- **Think:** "I thought I was a new user" (was returning) · "I'm anxious to get this started" · "I can get a price faster elsewhere."
- **Do:** abandons mid-quote and walks to the local hardware shop · dismisses generic cross-sell ("No thanks") · never notices 4 unread messages · leaves a 9.25 review, then forgets the platform.
- **Feel:** anxious in the quote wait · overwhelmed by comparison effort · indifferent to the platform between needs.

**The returning-user landing is a double failure:** it neither reinforces past success (no "welcome back, here's your trusted electrician") *nor* routes them to the hyper-optimised search funnel — it dumps them into a confusing tangle of stale tabs. A less determined user than Taimur likely churns right there. Even without surfacing past success, defaulting returners into search would at least get them to value quicker.

## 3. User & customer cohorts
> **Tip:** dealing with a multi-sided platform? Think through each side at a high level. Slice however it helps. You're designing for a specific cohort, even when the feature is exposed to everyone. Struggling? Map back to box 1.

**Sides:** homeowners = demand (free) · tradespeople = supply (pay to be listed ⚠️ assumption). This canvas focuses on **demand**; supply feels every demand failure second-hand (ghosted quotes, unread messages).

**Target cohort (design for this, ship to everyone):**
**Lapsed / lapsing returning homeowners** — last activity 3–6+ months ago, who previously **converted (accepted a quote)**.

- Deliberately simple: Checkatrade shows no signs of sophisticated lapse-stage segmentation (its data model doesn't even close jobs), so a maturity-matched cut beats a fantasy one.
- "Accepted a quote" is cheaply provable in their existing data; "paid via platform" may define an empty set if payment happens off-platform.
- Matches the challenge's framing: homeowners who've already had a successful booking.

**Qualitative definition:** a **high-intent** user — nobody visits Checkatrade for pleasure; they come because something needs doing. Quality-seeking (that's why they're not on Gumtree risking a cowboy builder) but **price-comparing within the trusted pool** — willing to pay a modest premium for vetted trades, still hunting the most competitive quote among them.

## 4. Solutions today
> **Tip:** how do they solve this today? Competitors, an operational process, or existing features on the current product — or they just live with it. What works well? Beat it or keep it.

**The real enemy = whatever is least friction at the moment of high intent:**
- **Google** — the default habit; instant; where a faded user starts when no incumbent exists.
- **TaskRabbit** — instant rate visibility; converts the high-intent user *during Checkatrade's quote wait*. Gig-flavoured rather than trade-vetted, but speed wins at high intent.
- **Hardware shop / local word of mouth** — human trust, zero comparison effort; beat Checkatrade mid-funnel on the toilet remodel (real case).

**Dismissed:** Gumtree and similar — different customer; the quality-seeking homeowner won't risk a cowboy builder.

**What today's solutions do well (beat or keep):** speed-to-a-price (TaskRabbit), zero-effort trust (hardware shop), habit (Google). **Checkatrade's keep:** vetted, well-reviewed trades — the quality moat — plus its hyper-optimised search funnel.

## 5. Why the business should care
> **Tip:** tie it to a number the business already tracks — what does doing nothing cost? T-shirt sizing of reach and impact, or a TAM.

**Metric hierarchy:** North Star = **jobs completed through the platform**; downstream outcomes = revenue (£105.9m FY2024), CLV, MAU. Repeat usage is the compounding input to the North Star.

**Why now (verified facts — see fact-packs):**
- Revenue grew ~28% (FY2024) but at **~2% margin with negative net worth** — growth is being bought. Retention-led growth is cheaper than paid acquisition.
- Their stated strategy: *"evolving from a trusted directory into an end-to-end home improvement marketplace"* — **Priced Services fees and Checkatrade Pay (1.29–1.79%) scale directly with jobs completed.** Repeat demand is the engine of that transition.
- Ownership in flux (possible sale) — provable repeat demand is exactly what a buyer prices.

**T-shirt sizing (SWAGs marked):**
- Lapsed-with-accepted-quote ≈ 40% of homeowner base *(SWAG)* · reactivate 25% of them with +1 job/yr *(SWAG)* · ~80% quote-acceptance for returning high-intent users *(Taimur estimate — they've bought before)*
- → **≈ 8–10% more annual jobs through the platform, compounding yearly**, at near-zero acquisition cost — before referral upside (MAU +~5% serendipity, not the case).
- Revenue elasticity by stream: leads → Growth-tier upgrades/retention (lagged); Priced Services + Pay → direct per-job revenue (strategic growth engine); sponsored listings → demand-driven.

**Cost of doing nothing:** every lapsed homeowner re-defaults to Google/TaskRabbit; trades' membership value erodes (ghosted quotes, unread messages), threatening the paying side too.

## 6. How might we…?
> **Tip:** turn what you learned in boxes 1–5 into "How might we…" questions — note which box each maps back to.

_(open)_

## 7. Impact stack-rank

_(open)_
