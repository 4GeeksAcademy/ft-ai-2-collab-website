# Project Context

## 1. Project Overview

We are building a visual and functional e-commerce prototype inspired by Apple, with a modern commerce website experience.

- Goal: Create an elegant, minimal storefront that reflects a polished, premium retail experience similar to Apple.
- Experience: Emphasize crisp visual design, clean typography, and a streamlined user experience.
- SEO: Implement best practices for discoverability with semantic structure, metadata, and accessible markup.
- Output: A responsive, fully accessible prototype built using only HTML and Tailwind CSS.

## 2. Strict Tech Stack & Constraints (CRITICAL)

- Technology stack: HTML + Tailwind CSS only.
- No JavaScript frameworks, no React, no Vue, no Angular, no Svelte.
- Do not use JavaScript functionality beyond static HTML/CSS patterns.
- Use Semantic HTML tags consistently:
  - `<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<footer>`, `<aside>`, `<figure>`, `<figcaption>`, `<button>`, `<form>`, etc.
- Ensure full responsiveness for mobile, tablet, and desktop breakpoints.
- Apply accessible structure and semantic labels for content clarity.
- Include Schema.org structured data where applicable using JSON-LD or microdata in the HTML pages.

## 3. Key Objectives

- Build a consistent brand language across all pages.
- Create reusable components for navigation and footer.
- Maintain a cohesive layout system using Tailwind CSS utility classes.
- Optimize page structure for SEO with proper headings and metadata.
- Ensure all views adapt gracefully across screen sizes.
- Document progress clearly to keep the team aligned.

## 4. Design System

- Typography: use `Inter` as the primary sans-serif typeface for headings, body text, and UI elements, with `system-ui` / `-apple-system` fallbacks for Apple-inspired clarity.
- Color palette:
  - Primary accent: `#0071E3` (Apple blue)
  - Secondary accent: `#34C759` (fresh green)
  - Background: `#F5F5F7` and `#FFFFFF`
  - Surface / borders: `#E5E5EA` and `#D1D1D6`
  - Text primary: `#1C1C1E`
  - Text secondary: `#6E6E73`
- Use the accent colors consistently for CTAs, links, and interactive states.
- Maintain high contrast for readability and accessibility.
- Apply minimal spacing, refined button styling, and clean card treatments across all pages.

## 5. Views to Implement

### Home

- [ ] Reusable Navbar
- [ ] Reusable Footer
- [ ] Hero section with strong brand messaging
- [ ] "New arrivals" product cards
- [ ] "Best sellers" product cards

### Catalog

- [ ] Reusable Navbar
- [ ] Reusable Footer
- [ ] Filter bar for category and size
- [ ] 4x5 product grid layout

### Product View

- [ ] Reusable Navbar
- [ ] Reusable Footer
- [ ] Two-column layout: image left, details right
- [ ] Description section for materials and use cases

### Cart

- [x] Reusable navbar
- [x] Reusable footer
- [x] Full-page cart layout
- [x] List of 3 sample items with thumbnails, price, quantity, and line total
- [x] Summary box with subtotal, tax, and total

### Payment Form (Checkout)

- [ ] Reusable Navbar
- [ ] Reusable Footer
- [ ] 3-step checkout flow
  - [ ] Personal details
  - [ ] Shipping address
  - [ ] Card payment

## 5. SEO & Accessibility Requirements

- Use distinct page titles and meta descriptions for each view.
- Structure content with heading hierarchy (`<h1>`, `<h2>`, `<h3>`, ...).
- Provide descriptive link text and button labels.
- Include ARIA-friendly roles only when necessary.
- Integrate Schema.org structured data for products, offers, breadcrumbs and organization where relevant.
- Use responsive images and accessible alt text for all product visuals.

## 6. Collaboration & Progress Tracking

- Keep this file updated as the repository evolves.
- Track completed views and components with the checklist above.
- Note any changes to scope, requirements, or design direction.
- Use clear commits and branch names for implementation work.

## 7. Notes and Constraints for the Team

- This repository is a static prototype, not a production e-commerce application.
- Interaction patterns should be expressed through HTML structure and CSS styling only.
- JavaScript-style behavior should be simulated visually, not implemented with scripts.
- All pages should be review-ready and easy for the team to extend.
