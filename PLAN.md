## Plan: French Business Casual Prototype Refresh

Create a single-page visual prototype in Tailwind CDN for a French business-casual retailer using a Parisian-minimal aesthetic: airy spacing, muted low-saturation palette, simple smart typography hierarchy, and relaxed editorial layout. Scope includes header/nav/announcement, hero, featured categories, product grid, and footer in mixed French-English copy with neutral placeholders (no real photos).

**Steps**
1. Phase 1 - Foundation and design tokens
2. Define Tailwind CDN theme extension in /workspaces/ft-ai-2-collab-website/index.html for a restrained palette (warm ivory, stone, sage/blue-gray accent), radius, shadows, and typography scales tuned for desktop/mobile readability.
3. Expand /workspaces/ft-ai-2-collab-website/style.css with complementary global styles that Tailwind utilities do not express cleanly (subtle grain/gradient atmosphere, placeholder image blocks, editorial divider treatments, focus-visible polish). *parallel with step 2 once token names are fixed*
4. Phase 2 - Page architecture and content blocks
5. Replace starter body markup in /workspaces/ft-ai-2-collab-website/index.html with semantic sections in this order: announcement + nav header, hero, featured category cards, product grid, footer. *depends on 2*
6. Build header/nav with compact business tone and minimal chrome (light borders, restrained hover states, CTA for collection browsing) while preserving clear mobile wrapping behavior. *depends on 5*
7. Build hero with mixed French-English copy, strong typographic rhythm, and neutral visual placeholders (abstract blocks) to mimic campaign imagery without external assets. *depends on 5*
8. Build featured category cards and product grid using card systems that feel calm and premium (low-contrast surfaces, subtle elevation, concise product metadata and pricing). *depends on 5*
9. Build footer with simple navigation, social placeholders, and legal text in mixed language. *depends on 5*
10. Phase 3 - Responsive and interaction polish
11. Add motion accents (gentle load-in/stagger using CSS keyframes and reduced-motion fallback) to avoid static boilerplate feel while staying elegant. *depends on 3 and 5*
12. Verify responsive behavior for small, medium, and large breakpoints with no overflow, readable spacing, and consistent visual hierarchy. *depends on 6-11*
13. Phase 4 - QA and refinement
14. Run local render check through existing Flask server flow to ensure the page loads from index.html and style.css without missing assets. *depends on 12*
15. Perform visual QA against requirements: low saturation colors, relaxed contemporary business-casual tone, simple smart layout, and no purple/dark bias. *depends on 14*

**Relevant files**
- /workspaces/ft-ai-2-collab-website/index.html — main Tailwind CDN config and all prototype sections; replace current starter markup and utility classes.
- /workspaces/ft-ai-2-collab-website/style.css — supplemental atmosphere, placeholder blocks, motion keyframes, and fine-grain polish not ideal as inline utilities.
- /workspaces/ft-ai-2-collab-website/server.py — reuse existing static serving path for manual validation only; no code changes expected.

**Verification**
1. Start local preview with python3 server.py and open the root page to confirm HTML/CSS load correctly.
2. Check layout at ~375px, ~768px, and ~1280px widths for spacing, line length, and card/grid wrapping.
3. Confirm all major sections are present: header/nav/announcement, hero, featured cards, product grid, footer.
4. Confirm color palette remains light and desaturated with clear contrast for text and interactive elements.
5. Confirm reduced-motion behavior by validating animations are disabled or softened under prefers-reduced-motion.

**Decisions**
- Included scope: header/nav/announcement, hero, featured categories/cards, product grid, footer.
- Visual direction: Parisian minimal.
- Imagery approach: neutral placeholders only.
- Copy language: mixed French-English.
- Excluded scope: backend logic, dynamic cart/filtering behavior, external image libraries, and production brand system setup.

**Further Considerations**
1. Font source choice recommendation: Option A - system serif/sans pairing (no external dependency), Option B - Google Fonts editorial pairing (stronger personality), Option C - keep default Tailwind sans for speed; recommended Option B for visual impact.
2. Product card density recommendation: Option A - 2/3/4 columns by breakpoint (balanced), Option B - 1/2/3 columns (larger cards), Option C - fixed 2 columns desktop (editorial); recommended Option A.
3. Hero emphasis recommendation: Option A - text-first with small visual panel, Option B - split 50/50 text and placeholder art, Option C - full-width banner style; recommended Option B.
