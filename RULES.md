# E-commerce HTML Platform Rules

This document defines the required standards for building and maintaining the e-commerce website in this repository.

## 1. Project Scope

- Platform type: static-first e-commerce storefront built with HTML, Tailwind CSS utilities, and optional vanilla JavaScript.
- Primary goal: present products clearly, build trust, and enable a smooth purchase flow.
- Core pages: Home, Catalog, Product View, Cart, Payment Form.

## 2. Required File Structure

- `index.html`: homepage.
- `catalog.html`: product listing / catalog.
- `product-view.html`: single product detail template.
- `cart.html`: shopping cart page.
- `payment.html`: payment form page.
- `assets/`: images, icons, logos.
- `scripts.js` (optional): behavior and interactions.

No `styles.css` file should be used for this project.

If additional pages are created, use descriptive lowercase names with hyphens (example: `shipping-policy.html`).

## 3. HTML Formatting Rules

- Use semantic tags: `header`, `nav`, `main`, `section`, `article`, `aside`, `footer`.
- Use one `h1` per page. Heading order must be hierarchical (`h1` -> `h2` -> `h3`).
- Indentation: 2 spaces.
- Use double quotes for attributes.
- All images must include meaningful `alt` text.
- All form elements must have associated `label` elements.
- Use UTF-8 charset and responsive viewport meta tag in every page.

Required base `<head>`:

```html
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Brand Name | Page Name</title>
	<script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
</head>
```

## 4. Tailwind Styling System (Mandatory)

Styling requirements:

- Tailwind CSS is the only allowed styling system.
- Use Tailwind utility classes directly in HTML.
- Do not create custom CSS classes.
- Do not include `<style>` blocks in HTML.
- Do not create or import custom CSS files (including `styles.css`).
- Use mobile-first responsive utilities (`sm:`, `md:`, `lg:`, `xl:`).
- Use Tailwind utilities for layout (`container`, `max-w-*`, `mx-auto`, `grid`, `flex`).
- Interactive elements must include `hover:` and `focus-visible:` states.
- Keep contrast high enough for readability.

Allowed example:

```html
<button class="rounded-lg bg-teal-700 px-4 py-2 text-white transition hover:bg-teal-800 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-teal-700">
	Add to Cart
</button>
```

Not allowed example:

```html
<button class="primary-button">Add to Cart</button>
```

## 5. Typography Rules

- Base font size: `16px`.
- Body line-height: `1.5` to `1.7`.
- Heading line-height: `1.1` to `1.3`.
- Use consistent type scale:
	- `h1`: 2rem to 3rem
	- `h2`: 1.5rem to 2.25rem
	- `h3`: 1.25rem to 1.5rem
	- body: 1rem
	- small text: 0.875rem

## 6. E-commerce Component Rules

### 6.1 Header and Navigation

- Must include logo, category navigation, search input, cart icon/button, and optional user account link.
- Header should remain usable on mobile via responsive menu.

### 6.2 Product Cards (Listing Page)

Each product card must include:

- Product image.
- Product name.
- Price (with discount display if applicable).
- Rating or review count (if available).
- Clear call-to-action button (`Add to Cart` or `View Product`).

### 6.3 Product Detail Page

Must include:

- Gallery / main product image.
- Product title.
- Current price and original price if discounted.
- Short description.
- Quantity selector.
- Add to cart button.
- Shipping/return highlights.

### 6.4 Cart Page

Must include:

- Product rows with thumbnail, name, unit price, quantity, subtotal.
- Remove item action.
- Order summary (subtotal, shipping, total).
- Checkout button.

### 6.5 Payment Form Page (Static Flow)

Must include sections for:

- Customer information.
- Shipping address.
- Payment details (demo fields only, no real payment processing in static project).
- Order summary and final confirmation button.

## 7. Content Rules

- Use clear, concise, trustworthy product copy.
- Avoid placeholder text such as "Lorem ipsum" in final versions.
- Currency format must be consistent across all pages.
- Product names should be descriptive and unique.
- Include policy content links: Shipping, Returns, Privacy, Terms.
- Include contact details or support channel in footer.

## 8. Accessibility Rules

- All actions must be keyboard accessible.
- Visible focus indicators are mandatory.
- Form errors should be text-based, not color-only.
- Use `aria-label` only when visible text labels are not possible.
- Decorative images should use empty alt (`alt=""`).

## 9. Performance and Asset Rules

- Use optimized images (`.webp` or compressed `.jpg/.png`).
- Avoid loading oversized media.
- Set explicit image dimensions when possible to reduce layout shifts.
- Minimize third-party scripts.
- Keep HTML and JS organized and readable; remove unused code.
- Avoid excessive utility duplication by reusing consistent Tailwind utility patterns.

## 10. SEO and Metadata Rules

- Every page must have:
	- unique `<title>`
	- meta description
	- canonical-friendly, descriptive URL names
- Use descriptive heading and link text.
- Product pages should include structured, scannable sections (description, specs, shipping).

## 11. QA Checklist Before Delivery

- Validate HTML structure and nesting.
- Check responsive behavior on mobile, tablet, and desktop widths.
- Verify links and navigation paths.
- Verify consistent spacing, typography, and color usage.
- Verify no custom CSS classes were introduced.
- Verify no custom CSS files or inline `<style>` blocks exist.
- Test keyboard navigation and focus states.
- Confirm no visible placeholder copy remains.

## 12. Visual Direction (Recommended)

- Tone: modern, clean, and trustworthy.
- Color strategy: neutral base + one primary brand color + one accent color.
- Use subtle shadows, rounded corners, and spacious layout.
- Prioritize product visuals and call-to-action clarity over decorative effects.

These rules are the default specification for this e-commerce HTML platform and should be followed for all new pages and updates.
