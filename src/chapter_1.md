# Chapter 1: Introduction to Web & HTML Basics

## Learning Objectives

By the end of this chapter, you will be able to:

- Understand how the internet and web work
- Write a valid HTML5 document with proper structure
- Use basic HTML tags correctly (html, head, body, h1, p)
- Create your first web page and view it in a browser

## Concept Introduction: What is the Web?

The **web** is a system of interconnected documents and resources linked
by hyperlinks and accessed through the internet. When you open a web
browser (Chrome, Firefox, Safari), you're accessing documents written in
**HTML** (HyperText Markup Language).

A **URL** (Uniform Resource Locator) is the web address you type in your
browser, like `https://www.example.com`. It tells your browser where to
find a web page.

**HTML** is the markup language that provides the structure and content
of web pages. Think of it as the skeleton of a house. **CSS** adds the
styling (paint, decoration), and **JavaScript** adds interactivity
(doors that open, lights that turn on).

Learn more: [W3Schools HTML Introduction](https://www.w3schools.com/html/html_intro.asp)

## HTML Document Structure

Every valid HTML5 document has this basic structure:

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Page Title</title>
  </head>
  <body>
    <!-- Content goes here -->
  </body>
</html>
```

Let's break down each part:

- `<!DOCTYPE html>` - Declares this is an HTML5 document
- `<html>` - The root element that contains all other elements
- `<head>` - Contains metadata (title, character encoding, links to CSS)
- `<title>` - The text shown in the browser tab
- `<body>` - Contains all visible content (headings, paragraphs, images, etc.)

## Step-by-Step Exercise: Create Your First Web Page

### Step 1: Open a Text Editor

Open a text editor like **Notepad** (Windows), **TextEdit** (Mac), or
**VS Code** (any platform). Do NOT use Word or Google Docs.

### Step 2: Write the HTML

Copy and paste this code into your text editor:

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>My First Web Page</title>
  </head>
  <body>
    <h1>Welcome to My Web Page</h1>
    <p>Hello! This is my first web page created with HTML.</p>
    <h2>About Me</h2>
    <p>I am learning web design and this is the beginning 
       of my journey.</p>
    <h2>My Interests</h2>
    <p>I enjoy learning new technologies and creating 
       amazing websites.</p>
  </body>
</html>
```

### Step 3: Save the File

1. Click **File → Save As**
2. Name the file: `index.html`
3. Choose a location (Desktop or Documents)
4. Make sure the file type is **Plain Text** or **All Files**
5. Click **Save**

### Step 4: Open in Your Browser

1. Open the folder where you saved `index.html`
2. Right-click on the file
3. Choose **Open With → Chrome** (or your preferred browser)
4. Your web page should appear!

### Step 5: View Page Source

In your browser, right-click on the page and select **Inspect** or 
**View Page Source** to see your HTML code.

## Common HTML Elements You Used

| Element | Purpose | Example |
|---------|---------|---------|
| `<h1>` to `<h6>` | Headings (h1 is largest) | `<h1>Welcome</h1>` |
| `<p>` | Paragraph of text | `<p>This is text</p>` |
| `<body>` | Contains all visible content | Wraps page content |
| `<head>` | Contains page metadata | `<title>`, `<meta>` |

## Challenge Exercise (Optional)

**Personalize Your Page**: Edit your `index.html` file to:

1. Change the title (in the `<title>` tag) to something personal
2. Replace "Welcome to My Web Page" with your own heading
3. Add information about yourself in the paragraphs
4. Add at least two more `<h2>` headings with `<p>` paragraphs below them
5. Save the file and refresh your browser (press F5) to see changes

**Tip**: Every time you edit the HTML file and save it, refresh your 
browser (Ctrl+R or Cmd+R) to see the changes.

## Key Takeaways

- HTML is the foundation of all web pages
- A valid HTML5 document needs `<!DOCTYPE>`, `<html>`, `<head>`, 
  and `<body>` tags
- Headings (`<h1>`-`<h6>`) organize content hierarchically
- Paragraphs (`<p>`) contain text content
- Always save files as `.html` with a text editor
- View your work in a web browser

## References

- [W3Schools HTML Tutorial](https://www.w3schools.com/html/)
- [W3Schools HTML Elements](https://www.w3schools.com/html/html_elements.asp)
- [MDN HTML Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML)
