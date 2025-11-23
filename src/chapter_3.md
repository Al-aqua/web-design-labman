# Chapter 3: HTML5 - Images, Links & Media

## Learning Objectives

By the end of this chapter, you will be able to:

- Insert and format images in web pages
- Create internal and external hyperlinks
- Add a favicon to your website
- Embed videos and audio content
- Understand responsive design basics
- Build multi-page websites with navigation

## Concept Introduction: Images & Links

**Images** add visual appeal and communicate information. Use the `<img>`
tag to display images on your page.

**Links** (hyperlinks) connect pages together and allow users to navigate.
Use the `<a>` tag to create clickable links to other pages or websites.

**Responsive Images** automatically adjust their size based on screen size,
providing better user experience on mobile and desktop devices.

Learn more: [W3Schools HTML Images](https://www.w3schools.com/html/html_images.asp) and [W3Schools HTML Links](https://www.w3schools.com/html/html_links.asp)

## The Image Tag

Insert images with the `<img>` tag:

```html
<img src="image.jpg" alt="Description of image">
```

Important attributes:
- `src` - Path to the image file
- `alt` - Alternative text (shown if image won't load, used by screen readers)
- `width` - Image width in pixels
- `height` - Image height in pixels

Example:
```html
<img src="cat.jpg" alt="A fluffy orange cat" 
     width="300" height="200">
```

**Always include the `alt` attribute!** It helps accessibility and SEO.

Learn more: [W3Schools img Tag](https://www.w3schools.com/html/html_images.asp)

## The Anchor Tag for Links

Create links with the `<a>` tag:

```html
<a href="url">Link text</a>
```

Types of links:

```html
<!-- External link (to another website) -->
<a href="https://www.example.com">Visit Example</a>

<!-- Internal link (to another page on your site) -->
<a href="about.html">About Us</a>

<!-- Link to a file -->
<a href="document.pdf">Download PDF</a>

<!-- Email link -->
<a href="mailto:hello@example.com">Email Us</a>

<!-- Link with target="_blank" (opens in new tab) -->
<a href="https://www.example.com" target="_blank">
  Open in new tab
</a>
```

Learn more: [W3Schools Links](https://www.w3schools.com/html/html_links.asp)

## Favicons

A **favicon** is the small icon that appears in the browser tab. Add it
with a `<link>` tag in the `<head>`:

```html
<!DOCTYPE html>
<html>
  <head>
    <title>My Website</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
  </head>
  <body>
    <!-- Content -->
  </body>
</html>
```

Favicon formats: `.ico`, `.png`, `.gif`, `.jpg`

Learn more: [W3Schools Favicon](https://www.w3schools.com/html/html_favicon.asp)

## Embedding Video

Embed videos using the HTML5 `<video>` tag:

```html
<video width="320" height="240" controls>
  <source src="movie.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>
```

Attributes:
- `width`, `height` - Size of video player
- `controls` - Shows play/pause buttons
- `autoplay` - Starts playing automatically
- `loop` - Repeats when finished
- `muted` - Starts without sound

Learn more: [W3Schools Video](https://www.w3schools.com/html/html5_video.asp)

## Embedding Audio

Embed audio using the HTML5 `<audio>` tag:

```html
<audio controls>
  <source src="song.mp3" type="audio/mpeg">
  Your browser does not support the audio tag.
</audio>
```

Learn more: [W3Schools Audio](https://www.w3schools.com/html/html5_audio.asp)

## Step-by-Step Exercise: Build a Multi-Page Website

### Step 1: Create Project Folder

Create a folder named `my-website` and inside it create:
- `index.html` (home page)
- `about.html` (about page)
- `portfolio.html` (portfolio page)
- `contact.html` (contact page)

### Step 2: Create index.html (Home Page)

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>My Portfolio - Home</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
  </head>
  <body>
    <h1>Welcome to My Portfolio</h1>
    
    <h2>Navigation</h2>
    <ul>
      <li><a href="index.html">Home</a></li>
      <li><a href="about.html">About</a></li>
      <li><a href="portfolio.html">Portfolio</a></li>
      <li><a href="contact.html">Contact</a></li>
    </ul>
    
    <h2>Latest Projects</h2>
    <p>Check out my recent work and experience.</p>
    <p><a href="portfolio.html">View My Portfolio →</a></p>
  </body>
</html>
```

### Step 3: Create about.html

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>My Portfolio - About</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
  </head>
  <body>
    <h1>About Me</h1>
    
    <h2>Navigation</h2>
    <ul>
      <li><a href="index.html">Home</a></li>
      <li><a href="about.html">About</a></li>
      <li><a href="portfolio.html">Portfolio</a></li>
      <li><a href="contact.html">Contact</a></li>
    </ul>
    
    <h2>My Story</h2>
    <p>I am a web design student learning to create amazing 
       websites. I have a passion for <strong>clean design</strong> 
       and <strong>user experience</strong>.</p>
    
    <h2>Skills</h2>
    <ul>
      <li>HTML5</li>
      <li>CSS3</li>
      <li>Web Design</li>
      <li>Responsive Design</li>
    </ul>
    
    <p><a href="contact.html">Get in touch →</a></p>
  </body>
</html>
```

### Step 4: Create portfolio.html

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>My Portfolio - Projects</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
  </head>
  <body>
    <h1>My Portfolio</h1>
    
    <h2>Navigation</h2>
    <ul>
      <li><a href="index.html">Home</a></li>
      <li><a href="about.html">About</a></li>
      <li><a href="portfolio.html">Portfolio</a></li>
      <li><a href="contact.html">Contact</a></li>
    </ul>
    
    <h2>Project 1: Blog Website</h2>
    <p>A modern blog built with clean HTML and responsive design.
    </p>
    
    <h2>Project 2: E-Commerce Site</h2>
    <p>An online store with product listings and categories.
    </p>
    
    <h2>Project 3: Portfolio Site</h2>
    <p>This very website showcasing my web design skills.
    </p>
  </body>
</html>
```

### Step 5: Create contact.html

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>My Portfolio - Contact</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
  </head>
  <body>
    <h1>Contact Me</h1>
    
    <h2>Navigation</h2>
    <ul>
      <li><a href="index.html">Home</a></li>
      <li><a href="about.html">About</a></li>
      <li><a href="portfolio.html">Portfolio</a></li>
      <li><a href="contact.html">Contact</a></li>
    </ul>
    
    <h2>Get in Touch</h2>
    <p>I'd love to hear from you! Feel free to reach out.</p>
    
    <p>Email: <a href="mailto:hello@example.com">
       hello@example.com</a></p>
    
    <p>Phone: <a href="tel:+1234567890">+1 (234) 567-8900</a></p>
  </body>
</html>
```

### Step 6: Test Navigation

1. Open `index.html` in your browser
2. Click each link in the Navigation section
3. Verify you can navigate between all pages
4. Use the back button to return to previous pages
5. Open links in new tabs using Ctrl+Click (Cmd+Click on Mac)

## Adding Images to Your Website

1. Save an image file (JPG, PNG, GIF) in your `my-website` folder
2. Add it to a page:

```html
<h2>Sample Image</h2>
<img src="myimage.jpg" alt="Description of my image" 
     width="400">
```

3. The `width="400"` sets the width; height adjusts automatically

## Common File Paths

```html
<!-- File in same folder -->
<a href="page.html">Link</a>
<img src="image.jpg" alt="Image">

<!-- File in subfolder -->
<a href="pages/page.html">Link</a>
<img src="images/photo.jpg" alt="Photo">

<!-- Go up one folder level -->
<a href="../index.html">Home</a>

<!-- Absolute URL (external site) -->
<a href="https://www.example.com">External</a>
```

## Semantic HTML for Navigation

Best practice: use `<nav>` and `<ul>` for navigation menus:

```html
<nav>
  <ul>
    <li><a href="/">Home</a></li>
    <li><a href="/about">About</a></li>
    <li><a href="/services">Services</a></li>
  </ul>
</nav>
```

This provides better accessibility and semantic meaning.

## Challenge Exercise (Optional)

Enhance your multi-page website:

1. Add a `<nav>` element with semantic navigation to all pages
2. Create an `images` subfolder and add images to your pages
3. Add at least one image to the portfolio page
4. Create an external link to your favorite website
5. Add an email link: `<a href="mailto:your-email@example.com">`
6. Test all links work correctly

## Key Takeaways

- Always include `alt` text for images for accessibility
- Use `<a href="">` to create clickable links
- Internal links use relative paths: `about.html`
- External links use full URLs: `https://example.com`
- Organize files in folders (images/, pages/, etc.)
- Test all links before publishing
- Use semantic `<nav>` tags for navigation menus

## References

- [W3Schools HTML Images](https://www.w3schools.com/html/html_images.asp)
- [W3Schools HTML Links](https://www.w3schools.com/html/html_links.asp)
- [W3Schools HTML Favicon](https://www.w3schools.com/html/html_favicon.asp)
- [W3Schools HTML5 Video](https://www.w3schools.com/html/html5_video.asp)
- [W3Schools HTML5 Audio](https://www.w3schools.com/html/html5_audio.asp)

