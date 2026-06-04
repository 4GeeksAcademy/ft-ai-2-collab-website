#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CHECKOUT_FILE="$ROOT_DIR/checkout.html"
STYLE_FILE="$ROOT_DIR/style.css"

fail() {
  echo "[FAIL] $1" >&2
  exit 1
}

pass() {
  echo "[PASS] $1"
}

[[ -f "$CHECKOUT_FILE" ]] || fail "Missing checkout.html"
[[ -f "$STYLE_FILE" ]] || fail "Missing style.css"

# Checkout should fetch home page theme tokens at runtime.
grep -q 'fetch("home.html"' "$CHECKOUT_FILE" || fail "checkout.html is not fetching home.html for theme sync"
grep -q 'syncCheckoutThemeFromHome' "$CHECKOUT_FILE" || fail "checkout.html theme sync function missing"
grep -q 'parseColorToken' "$CHECKOUT_FILE" || fail "checkout.html color token parser missing"
pass "checkout runtime sync hooks found"

# Checkout Tailwind tokens should be CSS variable driven.
grep -q 'rgb(var(--navbase-rgb) / <alpha-value>)' "$CHECKOUT_FILE" || fail "navbase token is not CSS variable driven"
grep -q 'rgb(var(--navtext-rgb) / <alpha-value>)' "$CHECKOUT_FILE" || fail "navtext token is not CSS variable driven"
grep -q 'rgb(var(--sleeve-rgb) / <alpha-value>)' "$CHECKOUT_FILE" || fail "sleeve token is not CSS variable driven"
pass "checkout Tailwind color tokens use CSS variables"

# Shared style variables must exist for adaptive styling.
grep -q -- '--navbase-rgb:' "$STYLE_FILE" || fail "style.css missing --navbase-rgb"
grep -q -- '--navtext-rgb:' "$STYLE_FILE" || fail "style.css missing --navtext-rgb"
grep -q -- '--sleeve-rgb:' "$STYLE_FILE" || fail "style.css missing --sleeve-rgb"
grep -q -- '--paper-rgb:' "$STYLE_FILE" || fail "style.css missing --paper-rgb"
pass "style.css root theme variables found"

# Checkout visuals should consume theme variables (not hardcoded palette).
grep -q 'var(--mist-rgb)' "$STYLE_FILE" || fail "checkout gradients are not using mist variable"
grep -q 'var(--sky-rgb)' "$STYLE_FILE" || fail "checkout gradients are not using sky variable"
grep -q 'var(--sleeve-rgb)' "$STYLE_FILE" || fail "checkout accents are not using sleeve variable"
pass "checkout styles consume adaptive theme variables"

echo "Theme sync smoke test passed."
