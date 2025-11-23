# Chapter 7: CSS Basics - Selectors, Colors & Backgrounds

## Learning Objectives

By the end of this chapter, you will be able to:

- Write valid CSS syntax and understand the cascade
- Use CSS selectors (element, class, ID, attribute)
- Apply colors using different color formats
- Add background colors and images
- Link external stylesheets to HTML
- Validate CSS code

## Concept Introduction: What is CSS?

**CSS** (Cascading Style Sheets) controls the presentation and layout of
web pages. While HTML provides structure, CSS provides styling:

- Colors and backgrounds
- Fonts and text formatting
- Layout and spacing
- Borders and shadows
- Animations and transitions

CSS works by selecting HTML elements and applying style rules to them.

Learn more: [W3Schools CSS Introduction](https://www.w3schools.com/css/css_intro.asp)

## CSS Syntax

A CSS rule consists of a selector and a declaration block:

```css
selector {
  property: value;
  property: value;
}
```

Example:

```css
p {
  color: blue;
  font-size: 16px;
}
```

- **Selector** - Which HTML element to style (`p`)
- **Property** - What to change (`color`, `font-size`)
- **Value** - New value for the property (`blue`, `16px`)

Learn more: [W3Schools CSS Syntax](https://www.w3schools.com/css/css_syntax.asp)

## CSS Selectors

### Element Selector

Selects all elements of a specific type:

```css
p {
  color: red;
}

h1 {
  font-size: 32px;
}
```

Learn more: [W3Schools Element Selector](https://www.w3schools.com/css/css_selectors.asp)

### Class Selector

Selects elements with a specific class (starts with `.`):

```css
.main-container {
  width: 800px;
}

.highlight {
  background-color: yellow;
}
```

HTML:
```html
<div class="main-container">Content</div>
<p class="highlight">Important text</p>
```

Learn more: [W3Schools Class Selector](https://www.w3schools.com/css/css_selectors.asp)

### ID Selector

Selects the element with a specific ID (starts with `#`):

```css
#header {
  background-color: navy;
}

#main-content {
  padding: 20px;
}
```

HTML:
```html
<header id="header">Header content</header>
<main id="main-content">Main content</main>
```

**Note**: Each ID should be unique on a page. Use classes for multiple
elements with the same style.

Learn more: [W3Schools ID Selector](https://www.w3schools.com/css/css_selectors.asp)

### Attribute Selector

Selects elements with specific attributes:

```css
/* Select all links */
a[href] {
  color: blue;
}

/* Select inputs of type email */
input[type="email"] {
  border: 1px solid gray;
}

/* Select elements with title attribute */
[title] {
  cursor: help;
}
```

Learn more: [W3Schools Attribute Selector](https://www.w3schools.com/css/css_selectors.asp)

## Selector Specificity

When multiple CSS rules apply, the most specific selector wins:

```css
/* Element selector (lowest specificity) */
p { color: black; }

/* Class selector (higher specificity) */
.highlight { color: yellow; }

/* ID selector (highest specificity) */
#main { color: red; }
```

If an element has all three, the ID selector color (red) applies.

Learn more: [W3Schools CSS Specificity](https://www.w3schools.com/css/css_specificity.asp)

## Colors in CSS

### Color Formats

#### Named Colors
```css
p { color: red; }
h1 { background-color: navy; }
```

#### Hex Colors
```css
p { color: #FF0000; }      /* Red */
h1 { color: #0000FF; }     /* Blue */
button { color: #00AA00; } /* Green */
```

#### RGB Colors
```css
p { color: rgb(255, 0, 0); }      /* Red */
h1 { color: rgb(0, 0, 255); }     /* Blue */
div { background-color: rgb(100, 150, 200); }
```

#### RGBA Colors (with transparency)
```css
p { color: rgba(255, 0, 0, 0.5); } /* Red with 50% opacity */
div { background-color: rgba(0, 0, 255, 0.7); }
```

Learn more: [W3Schools Colors](https://www.w3schools.com/css/css_colors.asp)

## Text and Background Colors

```css
/* Text color */
p {
  color: white;
}

/* Background color */
body {
  background-color: #f0f0f0;
}

/* Combined */
.warning {
  color: white;
  background-color: red;
  padding: 10px;
}
```

## Background Images

Add background images to elements:

```css
body {
  background-image: url('background.jpg');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}

.hero {
  background-image: url('hero.png');
  background-size: 100% 100%;
}
```

Background properties:
- `background-image` - URL of the image
- `background-size` - How to size the image (cover, contain, 100% 100%)
- `background-position` - Where to position the image (center, top, etc.)
- `background-repeat` - Repeat pattern (repeat, no-repeat, repeat-x, repeat-y)
- `background-color` - Fallback color if image fails

Learn more: [W3Schools Backgrounds](https://www.w3schools.com/css/css_backgrounds.asp)

## External Stylesheets

Create a separate `.css` file and link it in the HTML `<head>`:

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>My Website</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <!-- Content -->
  </body>
</html>
```

The `<link>` tag has these attributes:
- `rel="stylesheet"` - Indicates it's a stylesheet
- `href="style.css"` - Path to the CSS file

## Step-by-Step Exercise: Create a Styled Website

### Step 1: Create the HTML File (index.html)

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>Styled Website</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <header id="site-header">
      <h1>My Awesome Website</h1>
      <p>Welcome to my online portfolio</p>
    </header>
    
    <nav>
      <ul>
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#services">Services</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
    </nav>
    
    <main>
      <section class="intro">
        <h2>About This Site</h2>
        <p>This website demonstrates CSS selectors, colors, 
           and styling with an external stylesheet.</p>
      </section>
      
      <section class="features">
        <h2>Key Features</h2>
        
        <div class="feature-box">
          <h3>Modern Design</h3>
          <p>Clean and contemporary design principles.</p>
        </div>
        
        <div class="feature-box">
          <h3>Responsive Layout</h3>
          <p>Works well on different screen sizes.</p>
        </div>
        
        <div class="feature-box">
          <h3>Easy to Maintain</h3>
          <p>Simple structure with organized CSS.</p>
        </div>
      </section>
      
      <section class="cta">
        <h2>Get Started</h2>
        <p>Ready to learn more? Contact us today!</p>
        <a href="#contact" class="btn">Contact Us</a>
      </section>
    </main>
    
    <footer id="site-footer">
      <p>&copy; 2025 My Awesome Website. All rights reserved.
      </p>
    </footer>
  </body>
</html>
```

### Step 2: Create the CSS File (style.css)

```css
/* Global styles */
body {
  background-color: #f5f5f5;
  color: #333;
  font-family: Arial, sans-serif;
}

/* Header styles */
#site-header {
  background-color: #2c3e50;
  color: white;
  padding: 40px 20px;
  text-align: center;
}

#site-header h1 {
  margin: 0;
  font-size: 36px;
}

#site-header p {
  margin: 10px 0 0 0;
  font-size: 18px;
}

/* Navigation styles */
nav {
  background-color: #34495e;
  padding: 0;
}

nav ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
}

nav ul li {
  margin: 0;
}

nav ul li a {
  color: white;
  text-decoration: none;
  padding: 15px 20px;
  display: block;
}

nav ul li a:hover {
  background-color: #2c3e50;
}

/* Main content */
main {
  max-width: 1000px;
  margin: 40px auto;
  padding: 0 20px;
}

/* Section styles */
.intro {
  background-color: white;
  padding: 30px;
  border-radius: 5px;
  margin-bottom: 40px;
}

.intro h2 {
  color: #2c3e50;
}

/* Features section */
.features {
  margin-bottom: 40px;
}

.features h2 {
  color: #2c3e50;
  text-align: center;
}

.feature-box {
  background-color: white;
  padding: 20px;
  margin: 15px 0;
  border-left: 4px solid #3498db;
  border-radius: 3px;
}

.feature-box h3 {
  color: #3498db;
  margin-top: 0;
}

/* Call-to-action section */
.cta {
  background-color: #3498db;
  color: white;
  padding: 40px;
  text-align: center;
  border-radius: 5px;
  margin-bottom: 40px;
}

.cta h2 {
  color: white;
  margin-top: 0;
}

/* Button styles */
.btn {
  display: inline-block;
  background-color: #2c3e50;
  color: white;
  padding: 12px 30px;
  text-decoration: none;
  border-radius: 3px;
  margin-top: 10px;
}

.btn:hover {
  background-color: #1a252f;
}

/* Footer */
#site-footer {
  background-color: #2c3e50;
  color: white;
  text-align: center;
  padding: 20px;
  margin-top: 40px;
}
```

### Step 3: Save and Test

1. Save the HTML as `index.html`
2. Save the CSS as `style.css` in the same folder
3. Open `index.html` in your browser
4. Verify that:
   - Header has dark background with white text
   - Navigation bar is styled with hover effects
   - Feature boxes have left blue border
   - Button has hover effect
   - Footer is styled consistently

### Step 4: Modify and Experiment

Edit `style.css` to:
1. Change the header background color to a different hex code
2. Change the feature box border color using RGB
3. Add a background color to the body using a color name
4. Change text colors for better contrast
5. Add padding or margins to different sections
6. Save and refresh browser (F5) to see changes

## Color Tools and Resources

Use these tools to pick colors:

- [W3Schools Color Picker](https://www.w3schools.com/colors/colors_picker.asp)
- [Hex Color Codes](https://www.w3schools.com/colors/colors_hex.asp)
- [RGB Color Codes](https://www.w3schools.com/colors/colors_rgb.asp)

## CSS Validation

Validate your CSS to catch errors:

1. Visit [W3C CSS Validator](https://jigsaw.w3.org/css-validator/)
2. Upload your CSS file or paste the code
3. Click "Check"
4. Fix any errors or warnings

## Selector Comparison

| Selector | Syntax | Specificity | Use Case |
|----------|--------|-------------|----------|
| Element | `p` | Low | Style all elements of type |
| Class | `.classname` | Medium | Style multiple elements |
| ID | `#idname` | High | Style one unique element |
| Attribute | `[attr="value"]` | Medium | Style by attribute |

## Best Practices

✅ **Do's**

- Use external stylesheets for all CSS
- Use meaningful class and ID names
- Use classes more than IDs (IDs should be unique)
- Keep CSS organized and readable
- Use color names for common colors, hex for specific colors
- Test on multiple browsers
- Comment your CSS for complex rules

❌ **Don'ts**

- Don't use inline styles (use external CSS instead)
- Don't use `!important` unless absolutely necessary
- Don't use too many different colors (keep consistent)
- Don't forget the `<link>` tag in your HTML head
- Don't mix too many font sizes
- Don't use low-contrast colors for readability

## Challenge Exercise (Optional)

Create a website with CSS styling that includes:

1. External stylesheet linked in HTML head
2. Use at least 5 different CSS selectors (element, class, ID, attribute)
3. Apply colors using three different formats (named, hex, RGB)
4. At least two sections with `background-color`
5. A hover effect on at least one element
6. Proper spacing with padding and margins
7. At least 3 different colors in your color scheme
8. A header and footer with distinct backgrounds
9. Comments in your CSS explaining sections
10. Validate your CSS with the W3C validator

## Key Takeaways

- CSS selectors target HTML elements for styling
- Element selectors style all elements of a type
- Class selectors (`.class`) style multiple elements
- ID selectors (`#id`) style one unique element
- Use `color` for text color and `background-color` for backgrounds
- Hex codes (`#FF0000`), RGB (`rgb(255,0,0)`), and names (`red`) all work
- Link external stylesheets with `<link rel="stylesheet" href="style.css">`
- Specificity determines which rule applies when there are conflicts
- Always validate your CSS code
- External CSS is better than inline styles

## References

- [W3Schools CSS Introduction](https://www.w3schools.com/css/css_intro.asp)
- [W3Schools CSS Syntax](https://www.w3schools.com/css/css_syntax.asp)
- [W3Schools CSS Selectors](https://www.w3schools.com/css/css_selectors.asp)
- [W3Schools CSS Colors](https://www.w3schools.com/css/css_colors.asp)
- [W3Schools CSS Backgrounds](https://www.w3schools.com/css/css_backgrounds.asp)
- [W3C CSS Validator](https://jigsaw.w3.org/css-validator/)
