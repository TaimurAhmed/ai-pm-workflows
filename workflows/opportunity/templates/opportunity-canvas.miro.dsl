# ============================================================================
# Opportunity Canvas — GOLDEN TEMPLATE (Miro layout_create DSL)
# ============================================================================
# Frozen 2026-07-19 from the hand-tuned "Land a flat in Germany" board — the
# user's final layout, not generated geometry. This file is the single source
# of truth for board instantiation.
#
# HOW TO INSTANTIATE (one cheap call — never re-derive geometry):
#   1. Substitute {{TITLE}} with the run's working title.
#   2. board_create (name: "Opportunity Canvas: {{TITLE}}").
#   3. Send ALL non-comment lines below in ONE layout_create call.
#   4. layout_read back and verify nothing overlaps or crosses an edge.
#
# STICKY TAXONOMY (apply when populating — prefix + colour, both mandatory):
#   ✔ EVIDENCE = red · PAIN = light_pink · DESIRE = light_green
#   COHORT = light_blue · TARGET CUSTOMER = blue · CONTEXT = gray
#   STRATEGY = violet · HMW = cyan · WHITE SPACE / SEED = orange
#   Stickies are SHORT LABELS (~140px squares in cells); depth lives in docs.
#   The opportunity anchor is a banner: "★ CUSTOMER OPPORTUNITY — [HANDLE]"
#   over a one-sentence statement.
#
# OVERFLOW LADDER when a box gets busy (never delete content — see issue #13):
#   1. step stickies down through Miro's preset sizes (match an existing
#      sticky's width — e.g. 140/150/185 — inventing widths won't stick)
#   2. re-grid the box  3. grow the container  4. ask the PM with options.
#
# BUILDER CAUTIONS (earned the hard way):
#   - layout_update old_string is EXACT-match against an entity-encoded
#     serialisation: ' = &#39;, = is &#61;, + is &#43;, & is &amp;, emoji are
#     entities. ALWAYS layout_read immediately before layout_update and copy
#     old_string byte-for-byte; keep match anchors ASCII-clean.
#   - STICKY takes width XOR height (aspect fixed by shape). TEXT takes width
#     only; height is content-derived — leave vertical slack or use SHAPEs.
#   - Changing a TEXT's font size auto-scales its width: set size+w together,
#     re-assert w afterwards.
#   - No atomic multi-item updates: one editor at a time, then one
#     reconciliation pass. (REST upgrade path: issue #14.)
# ============================================================================

# --- Header ---
hdr SHAPE x=1612 y=100 w=3224 h=200 type=rectangle fill=#EFEEEA border_color=#A8A49A border_width=1.5 ""
hdrtitle TEXT x=1040 y=68 w=2000 color=#000000 size=44 align=left "<p><strong>Opportunity Canvas: {{TITLE}}</strong></p>"
hdrmeta TEXT x=1040 y=161 w=2000 color=#333333 size=24 align=left "Team: _______     ·     Time-box: _______"

# --- Ground rules banner (above the canvas, red, dashed frame) ---
grbox SHAPE x=1952 y=-323 w=3961 h=476 type=rectangle fill=#FFFFFF fill_opacity=0.0 border_color=#BD0A0A border_style=dashed border_width=2 ""
grhead TEXT x=2440 y=-473 w=4800 color=#BD0A0A size=48 align=left "<p><strong><u>Ground rules</u></strong></p>"
grbody TEXT x=1973 y=-283 w=3867 color=#BD0A0A size=48 align=left "<p>• Slot frameworks in and out freely — stack-rank on SWAGs? Cool. Quotes over JTBD? Happy days.</p><p>• Time-box exceeded? Skip a step. Bias to action — analysis paralysis kills more opportunities than bad ranking does.</p><p>• This is not a sequence — the boxes carry no numbers on purpose. Start anywhere, jump anywhere; no magic order of conversation produces a silver-bullet opportunity.</p><p>• A tool, not gospel — depart from any box or template whenever your thinking argues better.</p>"

# --- Cells ---
c1 SHAPE x=350 y=800 w=700 h=1200 type=rectangle fill=#F6F5F2 border_color=#A8A49A border_width=1.5 ""
c2 SHAPE x=1062 y=500 w=725 h=600 type=rectangle fill=#F6F5F2 border_color=#A8A49A border_width=1.5 ""
c3 SHAPE x=1062 y=1100 w=725 h=600 type=rectangle fill=#F6F5F2 border_color=#A8A49A border_width=1.5 ""
c4 SHAPE x=1762 y=800 w=675 h=1200 type=rectangle fill=#F6F5F2 border_color=#A8A49A border_width=1.5 ""
c5 SHAPE x=1050 y=1700 w=2100 h=600 type=rectangle fill=#F6F5F2 border_color=#A8A49A border_width=1.5 ""
c6 SHAPE x=2362 y=1100 w=525 h=1800 type=rectangle fill=#F6F5F2 border_color=#A8A49A border_width=1.5 ""
c7 SHAPE x=2924 y=1100 w=599 h=1800 type=rectangle fill=#F6F5F2 border_color=#A8A49A border_width=1.5 ""

# --- Titles (28px black) ---
t1 TEXT x=350 y=250 w=640 color=#000000 size=28 align=left "<p>Why should the customer care? — Problems + desires = customer opportunity</p>"
t2 TEXT x=1062 y=250 w=665 color=#000000 size=28 align=left "Empathy mapping"
t3 TEXT x=1062 y=830 w=665 color=#000000 size=28 align=left "<p>Target user &amp; customer cohorts</p>"
t4 TEXT x=1762 y=250 w=615 color=#000000 size=28 align=left "Solutions today"
t5 TEXT x=1050 y=1450 w=2040 color=#000000 size=28 align=left "Why the business should care"
t6 TEXT x=2362 y=250 w=465 color=#000000 size=28 align=left "How might we…?"
t7 TEXT x=2912 y=250 w=515 color=#000000 size=28 align=left "Impact stack-rank"

# --- Tips (16px grey, snug under titles — user-tuned positions) ---
p1 TEXT x=364 y=393 w=687 color=#4F4F4F size=16 align=left "<p>Tip: start with what's motivating the customer. Then: what do they wish were true (the desire), and what gets in the way of getting it done (the problem)? Problem + desire = the opportunity. E.g. — I'm motivated to eat healthy. It's hard to figure out what's healthy (problem). I want something tasty (desire). Opportunity: help me find tasty food that's nutritionally simple to understand. A problem alone leads to a salad; the opportunity leads to a chocolate fudge protein shake. The customer hires what overlaps both.</p>"
p2 TEXT x=1062 y=287 w=665 color=#4F4F4F size=16 align=left "Tip: think through the what, why, when, where, how — and what they're feeling while doing, seeing, hearing — until you understand the customer's context (easy to go over the top). Then collaboratively list the gains (wants and needs — the measures of success) and pains (frustrations, anxieties, fears). Struggling with the opportunity box? Start here — this is never a sequential process :)"
p3 TEXT x=1062 y=910 w=665 color=#4F4F4F size=16 align=left "Tip: dealing with a multi-sided platform? Think through each side at a high level. Slice however it helps — channel, market, behaviour, attitude. No hard rules. You're designing for a specific cohort, even when the feature is exposed to everyone. Struggling? Map back to the opportunity box."
p4 TEXT x=1762 y=281 w=615 color=#4F4F4F size=16 align=left "Tip: how do they solve this today? Competitors, an operational process, or existing features on the current product — or they just live with it. What works well about today's way? You'll have to beat that, or keep it."
p5 TEXT x=1050 y=1481 w=2040 color=#4F4F4F size=16 align=left "Tip: tie it to a number the business already tracks — retention, GMV, support costs, whatever fits. What does it cost us to do nothing? A rough back-of-envelope t-shirt sizing of reach and impact — or even a TAM — beats 'big opportunity'."
p6 TEXT x=2362 y=281 w=465 color=#4F4F4F size=15 align=left "Tip: turn what you learned across the canvas into 'How might we…' questions — note which box each maps back to."

# --- Ideation signpost (giant, off the right edge) ---
ide TEXT x=4322 y=1006 w=2135 color=#4F4F4F size=144 align=left "→ tees up ideation (off-canvas)"

# --- Parked Solutions frame (empty fixture, below the canvas) ---
parked FRAME x=700 y=3150 w=1400 h=1550 fill=#FFFFFF "Parked Solutions"
