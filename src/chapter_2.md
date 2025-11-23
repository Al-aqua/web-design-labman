# Chapter 2: HTML5 - Headings, Paragraphs & Text Formatting

## Learning Objectives

By the end of this chapter, you will be able to:

- Understand heading hierarchy and use heading tags correctly
- Format text with bold, italic, emphasis, and strong tags
- Apply colors to text and backgrounds using inline styles
- Use HTML attributes to enhance your elements
- Create semantically meaningful content

## Concept Introduction: Headings & Hierarchy

**Headings** organize your page content into a clear structure. HTML has
six heading levels: `<h1>` (largest) through `<h6>` (smallest).

- `<h1>` - Main page title (use only ONE per page)
- `<h2>` - Major sections
- `<h3>` - Subsections
- `<h4>` through `<h6>` - Further subdivisions

**Important**: Use headings for structure, not styling. Don't skip heading
levels (go h1 → h2 → h3, not h1 → h3).

Learn more: [W3Schools HTML Headings](https://www.w3schools.com/html/html_headings.asp)

## Text Formatting Tags

HTML provides semantic tags for emphasizing text:

| Tag | Purpose | Usage |
|-----|---------|-------|
| `<strong>` | Indicates strong importance | `<strong>critical info</strong>` |
| `<b>` | Bold text (no semantic meaning) | `<b>bold text</b>` |
| `<em>` | Emphasized text (usually italic) | `<em>emphasized</em>` |
| `<i>` | Italic text (no semantic meaning) | `<i>italic text</i>` |

**Semantic vs Non-semantic**: `<strong>` and `<em>` add meaning for
screen readers. `<b>` and `<i>` are just visual styling.

Learn more: [W3Schools Text Formatting](https://www.w3schools.com/html/html_formatting.asp)

## HTML Attributes

**Attributes** provide additional information about elements. Common
attributes include:

- `id` - Unique identifier for an element
- `class` - Groups elements for styling
- `style` - Inline CSS styling
- `title` - Tooltip text on hover

Example:
```html
<p style="color: blue;">This text is blue</p>
<h2 id="main-heading">My Heading</h2>
```

Learn more: [W3Schools HTML Attributes](https://www.w3schools.com/html/html_attributes.asp)

## Inline Styling with Colors

You can apply colors directly to HTML elements using the `style` attribute:

```html
<!-- Text color -->
<p style="color: red;">This text is red</p>

<!-- Background color -->
<p style="background-color: yellow;">Yellow background</p>

<!-- Combined -->
<p style="color: white; background-color: navy;">
  White text on navy background
</p>
```

Color values can be:
- Color names: `red`, `blue`, `green`, etc.
- Hex codes: `#FF0000` (red), `#0000FF` (blue)
- RGB: `rgb(255, 0, 0)` (red)

Learn more: [W3Schools HTML Colors](https://www.w3schools.com/html/html_colors.asp)

## Step-by-Step Exercise: Create a Blog Post

### Step 1: Open Your Text Editor

Create a new file and save it as `blog-post.html`

### Step 2: Write the HTML

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>My First Blog Post</title>
  </head>
  <body>
    <h1>The Future of Web Design</h1>
    
    <p style="color: #666;">
      Published on <strong>November 23, 2025</strong>
    </p>
    
    <h2>Introduction</h2>
    
    <p>Web design has evolved dramatically over the past 
       decade. <em>Responsive design</em>, <strong>accessibility</strong>,
       and <b>performance</b> are now essential considerations for 
       every web developer.</p>
    
    <h2>Key Trends</h2>
    
    <p>Several important trends are shaping modern web design:</p>
    
    <h3>Mobile-First Design</h3>
    
    <p>Designing for mobile devices first, then scaling up 
       to larger screens. This ensures <strong>optimal user 
       experience</strong> on all devices.</p>
    
    <h3>Accessibility Matters</h3>
    
    <p>Making websites accessible to everyone, including 
       people with disabilities. This is both a 
       <em>moral responsibility</em> and often a legal requirement.</p>
    
    <h2>Conclusion</h2>
    
    <p style="background-color: #e8f4f8; padding: 15px;">
      The future of web design is <strong>user-centric</strong>,
      <strong>accessible</strong>, and <strong>performant</strong>.
      Staying current with these trends will keep your skills 
      relevant in the evolving tech landscape.
    </p>
  </body>
</html>
```

### Step 3: Save and Open

1. Save the file as `blog-post.html`
2. Open it in your web browser
3. Notice how the different heading levels create structure
4. Observe the colored text and backgrounds

### Step 4: Modify and Experiment

Edit your HTML to:
1. Change the publication date to today's date
2. Add a new `<h3>` subsection under "Key Trends"
3. Include at least one `<strong>` tag and one `<em>` tag
4. Apply a background color to one paragraph
5. Change the text color of the introduction paragraph

Save and refresh your browser to see changes.

## Proper Heading Hierarchy Example

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Correct Heading Structure</title>
  </head>
  <body>
    <h1>Company Website</h1>
    
    <h2>Products</h2>
    <h3>Software</h3>
    <p>Description of software products...</p>
    
    <h3>Hardware</h3>
    <p>Description of hardware products...</p>
    
    <h2>Services</h2>
    <h3>Consulting</h3>
    <p>Description of consulting services...</p>
  </body>
</html>
```

Notice: h1 → h2 → h3 (proper order, no skipping)

## Common Mistakes to Avoid

❌ **Wrong**: Using `<h1>` multiple times
```html
<h1>Title 1</h1>
<h1>Title 2</h1>
```

✅ **Right**: Using heading hierarchy
```html
<h1>Main Title</h1>
<h2>Section 1</h2>
<h2>Section 2</h2>
```

❌ **Wrong**: Using headings for styling
```html
<h3 style="font-size: 50px;">This is not a real section</h3>
```

✅ **Right**: Using semantic headings
```html
<h1 style="font-size: 50px;">This is a real main heading</h1>
```

## Text Formatting Comparison

```html
<!-- Semantic (preferred) -->
<p>This is <strong>very important</strong> information.</p>
<p>This is <em>emphasized</em> text.</p>

<!-- Non-semantic (just visual) -->
<p>This is <b>bold</b> text.</p>
<p>This is <i>italic</i> text.</p>
```

Browsers display `<strong>` and `<b>` as bold, and `<em>` and `<i>` as
italic. But semantic tags provide meaning to assistive technologies.

## Challenge Exercise (Optional)

Create a blog post about a topic you're interested in with:

1. One main heading (`<h1>`)
2. At least three section headings (`<h2>`)
3. At least two subsections with `<h3>` headings
4. Use `<strong>` for important terms
5. Use `<em>` for emphasized phrases
6. Apply at least two different text colors
7. Apply at least one background color to a paragraph
8. Ensure proper heading hierarchy (no skipping levels)

## Key Takeaways

- Always use one `<h1>` per page for the main title
- Follow heading hierarchy: h1 → h2 → h3 (don't skip levels)
- Use `<strong>` and `<em>` for semantic text emphasis
- Use `<b>` and `<i>` for visual styling only
- Apply colors with the `style` attribute: `color: red;`
- Use hex codes, RGB, or color names for colors
- Proper structure makes content more accessible

## References

- [W3Schools HTML Headings](https://www.w3schools.com/html/html_headings.asp)
- [W3Schools HTML Paragraphs](https://www.w3schools.com/html/html_paragraphs.asp)
- [W3Schools HTML Text Formatting](https://www.w3schools.com/html/html_formatting.asp)
- [W3Schools HTML Styles](https://www.w3schools.com/html/html_styles.asp)
- [W3Schools HTML Colors](https://www.w3schools.com/html/html_colors.asp)
