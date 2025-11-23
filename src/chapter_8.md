# Chapter 8: CSS Intermediate - Box Model & Typography

## Learning Objectives

By the end of this chapter, you will be able to:

- Understand and apply the CSS box model
- Use borders, margins, and padding effectively
- Control element width and height
- Master typography: fonts, sizes, weights, and styles
- Create visual hierarchy with typography
- Build consistent layouts using the box model

## Concept Introduction: The Box Model

Every HTML element is a box. The **CSS box model** defines the space
around and within elements:

1. **Content** - The actual content (text, images)
2. **Padding** - Space inside the box, around content
3. **Border** - Line around the padding
4. **Margin** - Space outside the box, between elements

Understanding the box model is essential for controlling layout and
spacing.

Learn more: [W3Schools Box Model](https://www.w3schools.com/css/css_boxmodel.asp)

## Box Model Diagram

```
┌─────────────────────────────────────┐
│          Margin (outside)           │
│  ┌───────────────────────────────┐  │
│  │     Border (edge)             │  │
│  │  ┌─────────────────────────┐  │  │
│  │  │ Padding (inside space)  │  │  │
│  │  │  ┌─────────────────┐   │  │  │
│  │  │  │   Content       │   │  │  │
│  │  │  └─────────────────┘   │  │  │
│  │  └─────────────────────────┘  │  │
│  └───────────────────────────────┘  │
└─────────────────────────────────────┘
```

## Padding

**Padding** is space inside the element, around the content:

```css
/* All sides */
p {
  padding: 20px;
}

/* Top & bottom, left & right */
p {
  padding: 10px 20px;
}

/* Top, right, bottom, left */
p {
  padding: 10px 15px 10px 15px;
}

/* Individual sides */
p {
  padding-top: 10px;
  padding-right: 15px;
  padding-bottom: 10px;
  padding-left: 15px;
}
```

Learn more: [W3Schools Padding](https://www.w3schools.com/css/css_padding.asp)

## Borders

**Borders** are lines around elements:

```css
/* Basic border */
p {
  border: 1px solid black;
}

/* Border syntax: width style color */
div {
  border: 2px dashed blue;
}

/* Border styles: solid, dashed, dotted, double, groove, ridge */
p {
  border: 3px dotted red;
}

/* Individual borders */
box {
  border-top: 1px solid black;
  border-right: 2px solid blue;
  border-bottom: 1px solid black;
  border-left: 2px solid blue;
}

/* Border radius (rounded corners) */
.card {
  border: 1px solid #ccc;
  border-radius: 8px;
}
```

Border properties:
- `border-width` - 1px, 2px, 3px, etc.
- `border-style` - solid, dashed, dotted, double, etc.
- `border-color` - color value
- `border-radius` - Rounded corners

Learn more: [W3Schools Borders](https://www.w3schools.com/css/css_border.asp)

## Margins

**Margins** are space outside elements, between them:

```css
/* All sides */
p {
  margin: 20px;
}

/* Top & bottom, left & right */
p {
  margin: 10px 20px;
}

/* Top, right, bottom, left */
p {
  margin: 10px 15px 10px 15px;
}

/* Individual sides */
p {
  margin-top: 10px;
  margin-right: 15px;
  margin-bottom: 10px;
  margin-left: 15px;
}

/* Auto margins (center element) */
.container {
  width: 800px;
  margin: 0 auto;
}
```

Learn more: [W3Schools Margins](https://www.w3schools.com/css/css_margin.asp)

## Width and Height

Control element dimensions:

```css
/* Fixed width and height */
.box {
  width: 300px;
  height: 200px;
}

/* Percentage width */
.container {
  width: 100%;
  max-width: 1000px;
}

/* Min and max dimensions */
.sidebar {
  min-width: 200px;
  max-width: 400px;
}

/* Auto height (content-based) */
.content {
  height: auto;
}
```

Units:
- `px` - Pixels (fixed size)
- `%` - Percentage of parent
- `em` - Relative to font size
- `rem` - Relative to root font size
- `auto` - Let browser calculate

Learn more: [W3Schools Width & Height](https://www.w3schools.com/css/css_dimension.asp)

## Typography: Fonts

### Font Family

```css
/* Specific font */
body {
  font-family: "Helvetica Neue", Arial, sans-serif;
}

/* Web-safe font stacks */
p {
  font-family: Georgia, serif;
}

h1 {
  font-family: "Courier New", monospace;
}

/* Generic families (fallback) */
.text {
  font-family: Arial, sans-serif;
}
```

Common font families:
- `Arial, sans-serif` - Clean, modern
- `Georgia, serif` - Traditional, readable
- `"Courier New", monospace` - Code-like, fixed width
- `"Times New Roman", serif` - Classic

Learn more: [W3Schools Fonts](https://www.w3schools.com/css/css_font.asp)

### Font Size

```css
/* Pixel size (fixed) */
p {
  font-size: 16px;
}

h1 {
  font-size: 32px;
}

/* Relative units */
.small {
  font-size: 0.875em; /* 87.5% of parent */
}

.large {
  font-size: 1.5rem; /* 1.5x of root font size */
}

/* Percentage */
.text {
  font-size: 120%;
}
```

Best practices: Use `16px` as base, scale other sizes proportionally.

### Font Weight

```css
/* Named values */
p {
  font-weight: normal;     /* 400 */
}

strong {
  font-weight: bold;       /* 700 */
}

/* Numeric values */
.light {
  font-weight: 300;        /* Light */
}

.regular {
  font-weight: 400;        /* Normal */
}

.semibold {
  font-weight: 600;        /* Semi-bold */
}

.bold {
  font-weight: 700;        /* Bold */
}
```

Learn more: [W3Schools Font Weight](https://www.w3schools.com/css/css_font_weight.asp)

### Font Style

```css
/* Normal (default) */
p {
  font-style: normal;
}

/* Italic */
em, .italic {
  font-style: italic;
}

/* Oblique (similar to italic) */
.oblique {
  font-style: oblique;
}
```

## Typography: Line Height and Letter Spacing

```css
/* Line height (space between lines) */
p {
  line-height: 1.6;        /* 1.6x font size */
}

.compact {
  line-height: 1.2;
}

.spacious {
  line-height: 2;
}

/* Letter spacing (space between characters) */
h1 {
  letter-spacing: 2px;
}

.tight {
  letter-spacing: -1px;
}
```

Good readability:
- Line height: 1.5 to 1.8 for body text
- Letter spacing: -1px to 2px for headings

Learn more: [W3Schools Line Height](https://www.w3schools.com/css/css_text.asp)

## Step-by-Step Exercise: Create a Card Component Layout

### Step 1: Create card-layout.html

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>Card Layout</title>
    <link rel="stylesheet" href="cards.css">
  </head>
  <body>
    <h1>Product Cards</h1>
    
    <div class="cards-container">
      <div class="card">
        <h2>Laptop</h2>
        <p>High-performance computing device for work 
           and entertainment.</p>
        <p class="price">$999.99</p>
        <button class="btn">Learn More</button>
      </div>
      
      <div class="card">
        <h2>Smartphone</h2>
        <p>Latest mobile device with advanced features 
           and fast processor.</p>
        <p class="price">$599.99</p>
        <button class="btn">Learn More</button>
      </div>
      
      <div class="card">
        <h2>Tablet</h2>
        <p>Portable device perfect for reading, drawing, 
           and browsing.</p>
        <p class="price">$399.99</p>
        <button class="btn">Learn More</button>
      </div>
    </div>
  </body>
</html>
```

### Step 2: Create cards.css

```css
/* Global styles */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  background-color: #f0f0f0;
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
  font-size: 16px;
  line-height: 1.6;
  color: #333;
  padding: 20px;
}

h1 {
  text-align: center;
  margin-bottom: 40px;
  font-size: 32px;
  font-weight: 700;
  letter-spacing: 1px;
}

/* Container for cards */
.cards-container {
  max-width: 1200px;
  margin: 0 auto;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 20px;
}

/* Card styles */
.card {
  background-color: white;
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 20px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
}

.card:hover {
  transform: translateY(-5px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
}

/* Card heading */
.card h2 {
  font-size: 24px;
  font-weight: 600;
  margin-bottom: 15px;
  color: #2c3e50;
}

/* Card paragraph */
.card p {
  font-size: 14px;
  line-height: 1.8;
  margin-bottom: 15px;
  color: #555;
}

/* Price styling */
.card .price {
  font-size: 20px;
  font-weight: 700;
  color: #27ae60;
  margin: 15px 0;
}

/* Button styling */
.btn {
  background-color: #3498db;
  color: white;
  border: none;
  padding: 10px 20px;
  font-size: 14px;
  font-weight: 600;
  border-radius: 4px;
  cursor: pointer;
  width: 100%;
  margin-top: 10px;
  transition: background-color 0.3s ease;
}

.btn:hover {
  background-color: #2980b9;
}

/* Box sizing for all elements */
* {
  box-sizing: border-box;
}
```

### Step 3: Test and Modify

1. Save HTML as `card-layout.html`
2. Save CSS as `cards.css`
3. Open in browser and verify:
   - Cards have proper padding and borders
   - Cards are responsive (stack on mobile)
   - Hover effects work
   - Button is full width with padding

4. Try modifying:
   - Change `border-radius` values
   - Adjust padding and margins
   - Change font sizes and weights
   - Modify colors

## Step-by-Step Exercise: Create a Typography Showcase

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>Typography</title>
    <link rel="stylesheet" href="typography.css">
  </head>
  <body>
    <h1>Typography Showcase</h1>
    
    <section class="typography-section">
      <h2>Headings</h2>
      <h1>Heading 1 (32px, Bold)</h1>
      <h2>Heading 2 (28px, Bold)</h2>
      <h3>Heading 3 (24px, Semi-bold)</h3>
      <h4>Heading 4 (20px, Semi-bold)</h4>
    </section>
    
    <section class="typography-section">
      <h2>Body Text</h2>
      <p class="body-text">
        This is regular body text at 16px with a line height of 1.6.
        It provides good readability for longer passages. The generous
        spacing between lines makes it comfortable to read on screen.
      </p>
    </section>
    
    <section class="typography-section">
      <h2>Font Weights</h2>
      <p class="light">This text is 300 (Light)</p>
      <p class="regular">This text is 400 (Regular)</p>
      <p class="semibold">This text is 600 (Semi-bold)</p>
      <p class="bold">This text is 700 (Bold)</p>
    </section>
    
    <section class="typography-section">
      <h2>Spacing Examples</h2>
      <p class="tight-spacing">
        This paragraph has tight letter spacing for a compact look.
      </p>
      <p class="normal-spacing">
        This paragraph has normal letter spacing.
      </p>
      <p class="loose-spacing">
        This paragraph has loose letter spacing for emphasis.
      </p>
    </section>
  </body>
</html>
```

CSS for Typography Showcase:

```css
body {
  max-width: 800px;
  margin: 0 auto;
  padding: 40px 20px;
  font-family: Georgia, serif;
  background-color: #fafafa;
}

h1 {
  font-size: 32px;
  font-weight: 700;
  margin-bottom: 30px;
  text-align: center;
}

.typography-section {
  background-color: white;
  padding: 30px;
  margin-bottom: 20px;
  border-radius: 4px;
  border-left: 4px solid #3498db;
}

.typography-section h2 {
  font-size: 24px;
  font-weight: 600;
  margin-bottom: 20px;
  color: #2c3e50;
}

h3 {
  font-size: 24px;
  font-weight: 600;
}

h4 {
  font-size: 20px;
  font-weight: 600;
}

.body-text {
  font-size: 16px;
  line-height: 1.8;
  color: #555;
}

.light {
  font-weight: 300;
}

.regular {
  font-weight: 400;
}

.semibold {
  font-weight: 600;
}

.bold {
  font-weight: 700;
}

.tight-spacing {
  letter-spacing: -0.5px;
}

.normal-spacing {
  letter-spacing: 0;
}

.loose-spacing {
  letter-spacing: 2px;
}
```

## Box Model Properties Summary

| Property | Purpose | Example |
|----------|---------|---------|
| `padding` | Inner space | `padding: 20px;` |
| `border` | Edge line | `border: 1px solid black;` |
| `margin` | Outer space | `margin: 10px;` |
| `width` | Element width | `width: 300px;` |
| `height` | Element height | `height: 200px;` |
| `box-sizing` | Include padding/border in width | `box-sizing: border-box;` |

## Typography Properties Summary

| Property | Purpose | Example |
|----------|---------|---------|
| `font-family` | Font type | `font-family: Arial, sans-serif;` |
| `font-size` | Text size | `font-size: 16px;` |
| `font-weight` | Text thickness | `font-weight: 700;` |
| `font-style` | Italic/normal | `font-style: italic;` |
| `line-height` | Line spacing | `line-height: 1.6;` |
| `letter-spacing` | Character spacing | `letter-spacing: 1px;` |
| `text-align` | Alignment | `text-align: center;` |

## Best Practices

✅ **Do's**

- Use `box-sizing: border-box;` for predictable sizing
- Use relative units (em, rem) for scalable designs
- Keep line height between 1.5 and 1.8 for readability
- Use consistent spacing (padding/margin ratios)
- Limit font families to 2-3 for consistency
- Test typography at multiple screen sizes
- Use font weights strategically for hierarchy

❌ **Don'ts**

- Don't use padding on `<body>` for layout
- Don't set extreme font sizes
- Don't use too many different font families
- Don't forget margin/padding reset for consistency
- Don't use line-height less than 1.4
- Don't use all caps for body text (hard to read)

## Challenge Exercise (Optional)

Create a blog post layout with:

1. A header section with title and metadata
2. Multiple paragraphs with consistent line height
3. Headings with proper hierarchy and spacing
4. At least 3 font sizes for different elements
5. Use padding and margins for visual spacing
6. Add borders and background colors to highlight sections
7. Create a sidebar with different typography
8. Use `box-sizing: border-box;` globally
9. Implement font weights for emphasis
10. Ensure good readability with proper spacing

## Key Takeaways

- The box model: content → padding → border → margin
- Padding is inside space; margins are outside space
- Borders wrap around padding
- Use `box-sizing: border-box;` to include padding/border in width
- `font-family` specifies the typeface
- `font-size` should be readable (14-16px for body)
- `line-height` affects readability (1.5-1.8 recommended)
- `letter-spacing` controls character spacing
- Consistent typography improves design
- Test layouts at multiple screen sizes

## References

- [W3Schools Box Model](https://www.w3schools.com/css/css_boxmodel.asp)
- [W3Schools Padding](https://www.w3schools.com/css/css_padding.asp)
- [W3Schools Borders](https://www.w3schools.com/css/css_border.asp)
- [W3Schools Margins](https://www.w3schools.com/css/css_margin.asp)
- [W3Schools Width & Height](https://www.w3schools.com/css/css_dimension.asp)
- [W3Schools Fonts](https://www.w3schools.com/css/css_font.asp)
- [W3Schools Font Weight](https://www.w3schools.com/css/css_font_weight.asp)
- [W3Schools Line Height](https://www.w3schools.com/css/css_text.asp)
