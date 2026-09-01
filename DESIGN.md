---
name: Ethereal Earth
colors:
  surface: '#fff8f3'
  surface-dim: '#e2d9cf'
  surface-bright: '#fff8f3'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#fcf2e8'
  surface-container: '#f6ece2'
  surface-container-high: '#f0e7dd'
  surface-container-highest: '#eae1d7'
  on-surface: '#1f1b15'
  on-surface-variant: '#54433e'
  inverse-surface: '#343029'
  inverse-on-surface: '#f9efe5'
  outline: '#86736d'
  outline-variant: '#d9c1ba'
  surface-tint: '#914b33'
  primary: '#86432b'
  on-primary: '#ffffff'
  primary-container: '#a45a41'
  on-primary-container: '#ffeeea'
  inverse-primary: '#ffb59d'
  secondary: '#50652a'
  on-secondary: '#ffffff'
  secondary-container: '#cfe99f'
  on-secondary-container: '#546a2e'
  tertiary: '#565745'
  on-tertiary: '#ffffff'
  tertiary-container: '#6f705c'
  on-tertiary-container: '#f4f4db'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#ffdbd0'
  primary-fixed-dim: '#ffb59d'
  on-primary-fixed: '#390c00'
  on-primary-fixed-variant: '#73341e'
  secondary-fixed: '#d2eca2'
  secondary-fixed-dim: '#b6d088'
  on-secondary-fixed: '#131f00'
  on-secondary-fixed-variant: '#394d14'
  tertiary-fixed: '#e4e4cc'
  tertiary-fixed-dim: '#c8c8b0'
  on-tertiary-fixed: '#1b1d0e'
  on-tertiary-fixed-variant: '#474836'
  background: '#fff8f3'
  on-background: '#1f1b15'
  surface-variant: '#eae1d7'
  terracotta-rich: '#A45A41'
  olive-deep: '#556B2F'
  cream-warm: '#F5F5DC'
  sand-muted: '#E5E1C9'
typography:
  display-lg:
    fontFamily: Libre Caslon Text
    fontSize: 48px
    fontWeight: '400'
    lineHeight: 56px
    letterSpacing: -0.02em
  display-lg-mobile:
    fontFamily: Libre Caslon Text
    fontSize: 36px
    fontWeight: '400'
    lineHeight: 44px
  headline-md:
    fontFamily: Libre Caslon Text
    fontSize: 32px
    fontWeight: '400'
    lineHeight: 40px
  title-lg:
    fontFamily: DM Sans
    fontSize: 20px
    fontWeight: '500'
    lineHeight: 28px
    letterSpacing: 0.05em
  body-lg:
    fontFamily: DM Sans
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  label-sm:
    fontFamily: DM Sans
    fontSize: 12px
    fontWeight: '700'
    lineHeight: 16px
    letterSpacing: 0.1em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  unit: 8px
  gutter: 24px
  margin-mobile: 20px
  container-max: 1120px
  stack-sm: 16px
  stack-md: 32px
  stack-lg: 64px
---

## Brand & Style
The design system is centered on a "Warm Editorial" aesthetic, blending the timelessness of high-end stationery with modern digital utility. The brand personality is romantic, sophisticated, and deeply grounded, catering to an audience that appreciates tactile elegance and quiet luxury.

The visual style leans into **Minimalism** with **Tactile** influences. It prioritizes generous whitespace (represented by warm, creamy tones), refined typography, and organic textures that evoke paper and earth. The goal is to create an emotional response of warmth, intimacy, and celebration through a rich, sun-drenched palette.

## Colors
The palette is an earthy, organic harmony inspired by Mediterranean landscapes and artisanal craftsmanship.

*   **Primary (Terracotta):** This is the most prominent color in the hierarchy. It is used for key calls to action, primary headings, and significant brand accents to provide the "heart" and warmth of the design.
*   **Secondary (Olive Green):** A deep, sophisticated tone used for supportive elements, iconography, and nature-inspired accents that ground the terracotta.
*   **Tertiary (Cream/Beige):** The foundational surface color. It replaces pure white to add a premium paper-like feel and organic warmth.
*   **Neutral (Charcoal Earth):** A low-saturation dark tone used for body text and functional UI elements to ensure high legibility against the cream backgrounds.

## Typography
This design system utilizes a classic serif for storytelling and a geometric sans-serif for information architecture.

*   **Libre Caslon Text:** Chosen for its historical weight and elegance. Use this for names, section headers, and poetic quotes to establish the editorial narrative.
*   **DM Sans:** A low-contrast, modern sans-serif used for logistical details and forms. It ensures readability and adds a contemporary edge to the classic serif.
*   **Stylistic Note:** Apply wide letter-spacing to labels and titles to evoke a high-fashion, editorial feel. Use sentence case for headlines to maintain a gentle, inviting tone.

## Layout & Spacing
The layout philosophy follows a **fixed-width container** on desktop and a **fluid-margin model** on mobile to ensure an intimate reading experience.

*   **Vertical Rhythm:** Use generous vertical gaps (`stack-lg`) between major sections to allow the content to "breathe," mirroring the intentional layout of a physical invitation.
*   **Grid:** A 12-column grid is used for desktop. On mobile, elements should stack vertically with a single-column focus to maintain the narrative flow.
*   **Margins:** Strong outer margins are essential to prevent the design from feeling "crowded" or "app-like." Content should always feel centered and precious.

## Elevation & Depth
To maintain the "paper" aesthetic, this design system avoids heavy drop shadows. Instead, depth is achieved through tactile and tonal techniques:

*   **Tonal Layering:** Placing Cream elements on slightly darker Sand-muted backgrounds to create subtle separation without artificial shadows.
*   **Low-Contrast Outlines:** Using 1px solid borders in a slightly darker shade of the background color (e.g., a faint Olive or Terracotta stroke at 20% opacity).
*   **Soft Inner Glows:** For interactive elements like buttons, use a very subtle, high-spread inner shadow that mimics the slight depression of letterpress printing rather than a floating digital object.

## Shapes
The shape language is primarily **Soft** and architectural to balance the organic nature of the palette.

*   **Standard Elements:** Use 0.25rem (rounded-sm) for input fields and small buttons to maintain a clean, structured look that feels like cut paper.
*   **Imagery:** Photos should primarily use sharp corners for a "gallery" look or use organic "torn paper" masks to enhance the romantic theme.
*   **Decorative Elements:** Use hairline dividers (0.5px to 1px) to separate information without adding visual bulk.

## Components
*   **Buttons:** Primary buttons use a solid Terracotta background with Cream text. Labels use all-caps with increased letter spacing. Secondary buttons are "Ghost" style with a thin Olive Green border and text.
*   **Cards:** Minimal cards with no shadows. Distinguish sections using tonal shifts (Cream vs Sand) and hairline dividers.
*   **Input Fields:** Single-line inputs with only a bottom border are preferred to mimic a signature line on a physical card.
*   **Chips/Labels:** Small, all-caps Olive Green text with high letter spacing, used for categorizing events or status.
*   **Imagery Wrappers:** Incorporate "torn edge" effects or soft-focus vignettes on hero images to reinforce the romantic narrative.
*   **Navigation:** Use simple text links with a subtle Terracotta underline for the active state, emphasizing typography over heavy UI containers.