# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal portfolio website for Alexey Naiden — a single static HTML page (`index.html`) with no dependencies, no build tools, and no JavaScript. Hosted on GitHub Pages from the `main` branch.

## Development

There is no build process, package manager, or dev server. To preview locally, open `index.html` in a browser. To deploy, push to `main` — GitHub Pages serves it automatically.

## Architecture

Everything lives in one file: `index.html` contains all HTML and CSS (inline `<style>` block). The only other asset is `Alexey_Naiden_CV.pdf`.

**Styling approach:**
- CSS custom properties (`--text`, `--text-secondary`, `--link`, `--link-hover`, `--bg`, `--border`) define the color scheme
- Dark mode is automatic via `@media (prefers-color-scheme: dark)` overriding the CSS variables
- The `.available` badge has its own separate dark mode media query block
- System font stack (`-apple-system, BlinkMacSystemFont, ...`), no external fonts
- Max-width 640px, single-column layout

**Content sections in order:** header (name/tagline/status badge) → contact links → about paragraph → selected work → experience → education → skills → footer (location + CV download)

## Conventions

- No external dependencies — keep the site as a self-contained HTML file
- All styling uses CSS variables for theme consistency
- Class names follow a flat, descriptive pattern: `.section`, `.section-title`, `.highlight`, `.experience-item`, `.company`, `.role`
- Inline styles are only used sparingly (one instance on the Stanford education line)
