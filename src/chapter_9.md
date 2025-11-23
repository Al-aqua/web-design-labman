# Chapter 9: CSS Advanced - Effects & Animation

## Learning Objectives

By the end of this chapter, you will be able to:

- Apply CSS transitions for smooth state changes
- Use CSS transforms to manipulate elements
- Create animations with keyframes
- Style lists and tables with CSS
- Add hover effects and interactivity
- Enhance user experience with motion and effects

## Concept Introduction: Effects & Animation

**Effects** and **animations** add polish and interactivity to web pages.
They improve user experience by providing visual feedback and guiding
attention. CSS provides powerful tools without needing JavaScript:

- **Transitions** - Smooth changes between states
- **Transforms** - Rotate, scale, skew, translate elements
- **Animations** - Complex sequences with keyframes

Learn more: [W3Schools CSS Transitions](https://www.w3schools.com/css/css_transitions.asp)

## CSS Transitions

**Transitions** smoothly animate changes from one property value to another:

```css
/* Basic transition */
button {
  background-color: blue;
  transition: background-color 0.3s ease;
}

button:hover {
  background-color: darkblue;
}
```

Transition properties:

- `transition-property` - Which property to animate
- `transition-duration` - How long the animation takes (ms or s)
- `transition-timing-function` - How animation progresses
- `transition-delay` - Delay before animation starts

```css
/* Individual properties */
div {
  transition-property: background-color;
  transition-duration: 0.5s;
  transition-timing-function: ease-in;
  transition-delay: 0.2s;
}

/* Shorthand */
div {
  transition: background-color 0.5s ease-in 0.2s;
}

/* Animate multiple properties */
div {
  transition: background-color 0.3s, color 0.3s, transform 0.3s;
}

/* Animate all properties */
div {
  transition: all 0.3s ease;
}
```

Timing functions:

- `linear` - Constant speed
- `ease` - Slow start and end
- `ease-in` - Slow start
- `ease-out` - Slow end
- `ease-in-out` - Slow start and end

Learn more: [W3Schools Transitions](https://www.w3schools.com/css/css_transitions.asp)

## CSS Transforms

**Transforms** change the shape and position of elements:

### Translate (Move)

```css
/* Move element 50px right and 30px down */
.box {
  transform: translate(50px, 30px);
}

/* Move only horizontally */
.box {
  transform: translateX(50px);
}

/* Move only vertically */
.box {
  transform: translateY(30px);
}
```

### Scale (Resize)

```css
/* Scale uniformly */
.box {
  transform: scale(1.5);  /* 150% size */
}

/* Scale differently */
.box {
  transform: scale(1.2, 0.8);  /* 120% width, 80% height */
}

/* Scale only width */
.box {
  transform: scaleX(2);
}

/* Scale only height */
.box {
  transform: scaleY(0.5);
}
```

### Rotate (Spin)

```css
/* Rotate 45 degrees clockwise */
.box {
  transform: rotate(45deg);
}

/* Rotate counter-clockwise */
.box {
  transform: rotate(-45deg);
}

/* Rotate only around X axis */
.box {
  transform: rotateX(45deg);
}

/* Rotate only around Y axis */
.box {
  transform: rotateY(45deg);
}
```

### Skew (Distort)

```css
/* Skew on both axes */
.box {
  transform: skew(20deg, 10deg);
}

/* Skew only horizontally */
.box {
  transform: skewX(20deg);
}

/* Skew only vertically */
.box {
  transform: skewY(10deg);
}
```

### Combine Transforms

```css
/* Multiple transforms */
.box {
  transform: translate(50px, 30px) rotate(45deg) scale(1.2);
}
```

Learn more: [W3Schools Transforms](https://www.w3schools.com/css/css_transforms.asp)

## CSS Animations

**Animations** create complex sequences using keyframes:

```css
/* Define animation keyframes */
@keyframes slide-in {
  0% {
    opacity: 0;
    transform: translateX(-100px);
  }
  100% {
    opacity: 1;
    transform: translateX(0);
  }
}

/* Apply animation */
.box {
  animation: slide-in 0.5s ease-out;
}
```

Animation properties:

- `animation-name` - Name of the keyframe animation
- `animation-duration` - How long animation takes
- `animation-timing-function` - Animation pacing
- `animation-delay` - Delay before starting
- `animation-iteration-count` - How many times to repeat
- `animation-direction` - Forward, backward, alternate
- `animation-fill-mode` - How element looks before/after

```css
/* Individual properties */
.box {
  animation-name: slide-in;
  animation-duration: 1s;
  animation-timing-function: ease-in-out;
  animation-delay: 0.2s;
  animation-iteration-count: infinite;
  animation-direction: alternate;
}

/* Shorthand */
.box {
  animation: slide-in 1s ease-in-out 0.2s infinite alternate;
}
```

Animation fill modes:

- `none` - Return to original state
- `forwards` - Keep final keyframe state
- `backwards` - Apply initial keyframe before delay
- `both` - Apply both forwards and backwards

Learn more: [W3Schools Animations](https://www.w3schools.com/css/css_animations.asp)

## Hover Effects

Create interactive effects on hover:

```css
/* Button hover effect */
button {
  background-color: #3498db;
  transition: all 0.3s ease;
}

button:hover {
  background-color: #2980b9;
  transform: scale(1.05);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
}

/* Link hover effect */
a {
  color: #3498db;
  text-decoration: none;
  border-bottom: 2px solid transparent;
  transition: border-color 0.3s ease;
}

a:hover {
  border-bottom: 2px solid #3498db;
}

/* Card hover effect */
.card {
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}
```

Learn more: [W3Schools Hover](https://www.w3schools.com/css/css_pseudo_classes.asp)

## List Styling

Style lists with CSS:

```css
/* Remove bullet points */
ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

/* Custom list styling */
ul li {
  padding: 10px;
  border-bottom: 1px solid #eee;
}

/* Add custom content before items */
ul li:before {
  content: "→ ";
  color: #3498db;
  font-weight: bold;
  margin-right: 10px;
}

/* Alternate row colors */
ul li:nth-child(odd) {
  background-color: #f9f9f9;
}

/* Hover effect on list items */
ul li {
  transition: background-color 0.3s ease;
}

ul li:hover {
  background-color: #e8f4f8;
}
```

Learn more: [W3Schools List Styling](https://www.w3schools.com/css/css_list.asp)

## Table Styling

Style tables for better appearance and readability:

```css
/* Table styling */
table {
  width: 100%;
  border-collapse: collapse;
  margin: 20px 0;
}

/* Table header */
thead {
  background-color: #2c3e50;
  color: white;
}

/* Table headers and cells */
th, td {
  padding: 12px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

/* Striped table (alternating rows) */
tbody tr:nth-child(even) {
  background-color: #f9f9f9;
}

/* Hover effect on rows */
tbody tr:hover {
  background-color: #e8f4f8;
  transition: background-color 0.3s ease;
}

/* Footer styling */
tfoot {
  font-weight: bold;
  background-color: #ecf0f1;
}
```

Learn more: [W3Schools Table Styling](https://www.w3schools.com/css/css_table.asp)

## Step-by-Step Exercise: Create an Interactive Button Gallery

### Step 1: Create buttons.html

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>Interactive Buttons</title>
    <link rel="stylesheet" href="buttons.css">
  </head>
  <body>
    <h1>Interactive Button Gallery</h1>
    
    <div class="button-container">
      <button class="btn btn-primary">Primary Button</button>
      <button class="btn btn-success">Success Button</button>
      <button class="btn btn-warning">Warning Button</button>
      <button class="btn btn-danger">Danger Button</button>
    </div>
    
    <div class="button-container">
      <button class="btn btn-scale">Scale on Hover</button>
      <button class="btn btn-rotate">Rotate on Hover</button>
      <button class="btn btn-bounce">Bounce Animation</button>
      <button class="btn btn-glow">Glow Effect</button>
    </div>
  </body>
</html>
```

### Step 2: Create buttons.css

```css
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  min-height: 100vh;
  padding: 40px 20px;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

h1 {
  color: white;
  text-align: center;
  margin-bottom: 40px;
  font-size: 36px;
}

.button-container {
  max-width: 600px;
  margin: 0 auto 40px;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: 20px;
}

/* Base button styles */
.btn {
  padding: 12px 24px;
  font-size: 16px;
  font-weight: 600;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: all 0.3s ease;
}

/* Primary button */
.btn-primary {
  background-color: #3498db;
  color: white;
}

.btn-primary:hover {
  background-color: #2980b9;
  box-shadow: 0 4px 12px rgba(52, 152, 219, 0.4);
}

/* Success button */
.btn-success {
  background-color: #27ae60;
  color: white;
}

.btn-success:hover {
  background-color: #229954;
  box-shadow: 0 4px 12px rgba(39, 174, 96, 0.4);
}

/* Warning button */
.btn-warning {
  background-color: #f39c12;
  color: white;
}

.btn-warning:hover {
  background-color: #e67e22;
  box-shadow: 0 4px 12px rgba(243, 156, 18, 0.4);
}

/* Danger button */
.btn-danger {
  background-color: #e74c3c;
  color: white;
}

.btn-danger:hover {
  background-color: #c0392b;
  box-shadow: 0 4px 12px rgba(231, 76, 60, 0.4);
}

/* Scale on hover */
.btn-scale {
  background-color: #9b59b6;
  color: white;
}

.btn-scale:hover {
  transform: scale(1.1);
}

/* Rotate on hover */
.btn-rotate {
  background-color: #16a085;
  color: white;
}

.btn-rotate:hover {
  transform: rotate(-5deg);
}

/* Bounce animation */
@keyframes bounce {
  0%, 100% {
    transform: translateY(0);
  }
  50% {
    transform: translateY(-10px);
  }
}

.btn-bounce {
  background-color: #2980b9;
  color: white;
}

.btn-bounce:hover {
  animation: bounce 0.6s ease;
}

/* Glow effect */
@keyframes glow {
  0% {
    box-shadow: 0 0 5px rgba(255, 107, 107, 0.5);
  }
  50% {
    box-shadow: 0 0 20px rgba(255, 107, 107, 0.8);
  }
  100% {
    box-shadow: 0 0 5px rgba(255, 107, 107, 0.5);
  }
}

.btn-glow {
  background-color: #e74c3c;
  color: white;
}

.btn-glow:hover {
  animation: glow 1s ease infinite;
}
```

## Step-by-Step Exercise: Create an Animated Card Slider

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>Card Slider</title>
    <link rel="stylesheet" href="cards-animated.css">
  </head>
  <body>
    <h1>Animated Card Slider</h1>
    
    <div class="cards-container">
      <div class="card">
        <h2>Card 1</h2>
        <p>Hover over me to see the animation effect!</p>
      </div>
      
      <div class="card">
        <h2>Card 2</h2>
        <p>Each card has a unique animation on hover.</p>
      </div>
      
      <div class="card">
        <h2>Card 3</h2>
        <p>Watch the transformation effects in action.</p>
      </div>
      
      <div class="card">
        <h2>Card 4</h2>
        <p>CSS animations make the UI interactive and fun!</p>
      </div>
    </div>
  </body>
</html>
```

CSS for Animated Cards:

```css
body {
  background-color: #f0f0f0;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  padding: 40px 20px;
}

h1 {
  text-align: center;
  margin-bottom: 40px;
  color: #2c3e50;
}

.cards-container {
  max-width: 1200px;
  margin: 0 auto;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 20px;
}

@keyframes slide-up {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

@keyframes flip {
  0% {
    transform: rotateY(0deg);
  }
  100% {
    transform: rotateY(360deg);
  }
}

.card {
  background: white;
  border-radius: 8px;
  padding: 30px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  cursor: pointer;
  transition: all 0.3s ease;
  animation: slide-up 0.6s ease-out forwards;
}

.card:nth-child(1) { animation-delay: 0.1s; }
.card:nth-child(2) { animation-delay: 0.2s; }
.card:nth-child(3) { animation-delay: 0.3s; }
.card:nth-child(4) { animation-delay: 0.4s; }

.card h2 {
  color: #2c3e50;
  margin-bottom: 15px;
}

.card p {
  color: #555;
  line-height: 1.6;
}

.card:hover {
  transform: translateY(-10px) scale(1.05);
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
}
```

## Animation Performance Tips

For smooth animations:

```css
/* Use transform and opacity (GPU accelerated) */
.good-animation {
  animation: slide 0.3s ease-out;
}

@keyframes slide {
  from { transform: translateX(-100px); }
  to { transform: translateX(0); }
}

/* Avoid animating layout properties (position, width) */
.bad-animation {
  animation: bad-slide 0.3s ease-out;
}

@keyframes bad-slide {
  from { left: -100px; }
  to { left: 0; }
}
```

Best animated properties:
- `transform` - Very fast
- `opacity` - Very fast
- `filter` - Fast
- Avoid: `width`, `height`, `left`, `top`, etc.

## Challenge Exercise (Optional)

Create an interactive dashboard with:

1. Animated buttons with at least 3 different hover effects
2. A list with hover effects on items
3. A styled table with striped rows and hover effects
4. At least 2 keyframe animations
5. Use transitions on at least 5 elements
6. Include transform effects (scale, rotate, translate)
7. Create a card component with complex animation
8. Add timing delays to stagger animations
9. Use different timing functions (ease, ease-in, ease-out)
10. Test animations run smoothly without stuttering

## Key Takeaways

- Transitions smoothly animate between state changes
- Use `transition: property duration timing-function;`
- Transforms rotate, scale, translate, and skew elements
- Animations use @keyframes for complex sequences
- Hover effects make interfaces interactive
- List styling controls bullets and spacing
- Table styling improves readability with alternating rows
- Use transform and opacity for best performance
- Add animation-delay to stagger multiple elements
- Test animations on different devices

## References

- [W3Schools CSS Transitions](https://www.w3schools.com/css/css_transitions.asp)
- [W3Schools CSS Transforms](https://www.w3schools.com/css/css_transforms.asp)
- [W3Schools CSS Animations](https://www.w3schools.com/css/css_animations.asp)
- [W3Schools Hover](https://www.w3schools.com/css/css_pseudo_classes.asp)
- [W3Schools List Styling](https://www.w3schools.com/css/css_list.asp)
- [W3Schools Table Styling](https://www.w3schools.com/css/css_table.asp)
