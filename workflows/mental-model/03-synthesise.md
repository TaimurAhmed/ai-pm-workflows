# Stage 3 — Synthesise (🤖 Claude)

> 📋 **This is a prompt.** Paste it into Claude with the agreed content from Stage 2. (You can also just read it to understand the stage.)

**Goal:** write the one-page mental model from the template, containing **only** what the PM adopted in Stage 2, in the PM's structure and voice.

**Inputs:** the Stage 2 rulings; the template [`templates/mental-model.template.md`](templates/mental-model.template.md).

**Output:** `runs/<slug>/mental-model.md` — always. On request, the same content written into a **Google Doc** the PM names (edited in place, same link) or a `.docx` via the house style.

---

## Prompt

> Write the mental model from the template. Rules:
>
> 1. **Only adopted content.** Nothing the PM killed, nothing they did not see. No sections the template does not have.
> 2. **Scannable.** Headings for the five sections; bold labels on bullets; sub-bullets where the PM split a side (demand → users · customer; supply; channels). Real list formatting, never typed dashes or numbers.
> 3. **Sources once, where the PM wants them.** The Company section carries **one** subtitle naming the source document; per-line citations stay in the run notes, not in the one-pager, unless the PM asks for them.
> 4. **Open items stay visible** as a short list inside the section they belong to, labelled "Open".
> 5. **Voice.** Keep the PM's phrasing where they gave it. Fix grammar, not taste.
> 6. **Length.** One page. If it is longer, cut, don't shrink the font.
>
> **If the destination is a Google Doc:** read the doc first, append after the PM's existing lines, guard the write with the revision id, read it back to verify text and list structure, and say that the layout was not checked visually if it was not. Nothing is deleted or restyled that the PM wrote.
>
> After writing, give the PM a one-line list of what went in and what was left out, and the open items.
