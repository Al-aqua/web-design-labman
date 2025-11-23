# AGENTS.md - Web Design Lab Manual Guidelines

## Project Overview

This is an mdBook lab manual for practical web design coursework. Each lab chapter should be:

- **Fully practical**: Students complete hands-on exercises step-by-step
- **Printable**: 2-5 pages per lab (optimized for PDF)
- **Beginner-friendly**: Use W3Schools (https://www.w3schools.com/) as reference
- **Aligned with course outline**: Follow the 10-chapter practical curriculum in `src/outline.md`

## Build & Serve Commands

```bash
mdbook build              # Build HTML output to /book directory
mdbook serve --open       # Serve locally at http://localhost:3000
mdbook clean              # Remove /book directory
```

## Code Style & Content Guidelines

### Markdown Formatting

- Use semantic HTML headings: H1 for chapter title, H2 for sections, H3 for subsections
- Keep lines ~80 characters for readability
- Use code blocks for HTML/CSS with triple backticks and language identifier
- Use bold for **key terms** and concepts

### HTML/CSS Best Practices

- Valid HTML5: Include `<!DOCTYPE html>`, `<html>`, `<head>`, `<body>`
- Use semantic HTML tags: `<header>`, `<nav>`, `<main>`, `<article>`, `<footer>`
- External CSS only (no inline styles): Link in `<head>` with `<link rel="stylesheet">`
- Include viewport meta tag: `<meta name="viewport" content="width=device-width, initial-scale=1">`
- Validate code at W3Schools example editors before including

### Naming Conventions

- CSS class names: lowercase with hyphens (`main-container`, `btn-primary`)
- HTML IDs: camelCase for uniqueness (`mainForm`, `submitButton`)
- File names: lowercase with hyphens (`chapter-1.md`, `style.css`)

### Lab Structure Template

1. **Learning Objectives** - 2-3 clear goals
2. **Concept Introduction** - Brief explanation with W3Schools reference link
3. **Example Code** - Complete, runnable code block
4. **Step-by-Step Exercise** - Numbered instructions
5. **Expected Output** - Screenshot or description
6. **Challenge (Optional)** - Extension task

### Error Handling & Validation

- Always validate HTML/CSS code before submission
- Use browser DevTools console for JavaScript debugging
- Test on multiple browsers (Chrome, Firefox, Safari minimum)
- Ensure WCAG 2.1 AA accessibility compliance where practical

### References

- Link to W3Schools tutorials: https://www.w3schools.com/html/, https://www.w3schools.com/css/, etc.
- Follow the 10-chapter structure defined in `src/outline.md` (Chapters 1-6: HTML, 7-9: CSS, 10: JavaScript)
- Each lab should progress incrementally (Chapters 1-10 build on prior knowledge)

### Theme Assets

- Fonts: Located in `theme/fonts/` (Open Sans, Source Code Pro)
- CSS: `theme/css/general.css`, `theme/css/print.css`, `theme/css/chrome.css`
- Print optimization: Verify chapters print cleanly to PDF (2-5 pages per chapter)

## Chapter Implementation Guide

Follow the structured outline in `src/outline.md` for all 10 chapters:

1. **Chapter 1**: Introduction to Web & HTML Basics
2. **Chapter 2**: HTML5 - Headings, Paragraphs & Text Formatting
3. **Chapter 3**: HTML5 - Images, Links & Media
4. **Chapter 4**: HTML5 - Tables & Structured Data
5. **Chapter 5**: HTML5 - Forms & User Input
6. **Chapter 6**: HTML5 - Lists & Content Organization
7. **Chapter 7**: CSS Basics - Selectors, Colors & Backgrounds
8. **Chapter 8**: CSS Intermediate - Box Model & Typography
9. **Chapter 9**: CSS Advanced - Effects & Animation
10. **Chapter 10**: JavaScript Basics - Interactivity & Functionality

Each chapter should follow the template structure from `src/outline.md`:
- **Topics Covered** (technical topics from the 10-chapter curriculum)
- **Practical Exercise** (hands-on coding task for 2-5 pages, matching outline description)
- **Skills** (clear learning outcomes, aligned with chapter objectives)

## Workflow

1. Reference `src/outline.md` for chapter topics and structure
2. Create new chapter file in `src/` (e.g., `chapter_2.md`)
3. Follow the Lab Structure Template in this file (Learning Objectives → Code → Exercise → Output → Challenge)
4. Add entry to `src/SUMMARY.md` with chapter title and link
5. Run `mdbook serve --open` to preview locally at http://localhost:3000
6. Verify print output (Ctrl+P in browser, save as PDF, target 2-5 pages)
7. Test all HTML/CSS/JS code in W3Schools editor or browser console
8. Commit changes: `git add src/ && git commit -m "Add Chapter N: [Title]"`
