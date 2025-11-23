# Chapter 5: HTML5 - Forms & User Input

## Learning Objectives

By the end of this chapter, you will be able to:

- Build accessible HTML forms with various input types
- Use appropriate input types for different data
- Create form controls (text, email, password, checkbox, radio, textarea)
- Understand form attributes and validation basics
- Test and validate forms for functionality

## Concept Introduction: Forms

**Forms** collect information from users. Common uses include:

- Contact forms
- Login/registration
- Surveys and feedback
- Search bars
- Comment sections
- Checkout processes

Forms consist of input fields that capture user data and send it to a
server for processing.

Learn more: [W3Schools HTML Forms](https://www.w3schools.com/html/html_forms.asp)

## The Form Element

Every form starts with the `<form>` tag:

```html
<form action="/submit" method="POST">
  <!-- Form fields go here -->
  <button type="submit">Submit</button>
</form>
```

Attributes:
- `action` - URL where form data is sent
- `method` - POST (sends data) or GET (adds to URL)
- `name` - Identifies the form

Learn more: [W3Schools Form Tag](https://www.w3schools.com/html/html_forms.asp)

## Input Types

HTML5 provides many input types for different data:

| Type | Purpose | Example |
|------|---------|---------|
| `text` | Single-line text | Name, username |
| `email` | Email address (with validation) | user@example.com |
| `password` | Masked text | Secret passwords |
| `number` | Numeric values | Age, quantity |
| `tel` | Phone number | +1-234-567-8900 |
| `date` | Date picker | YYYY-MM-DD |
| `time` | Time picker | HH:MM |
| `checkbox` | Multiple selections | Choose multiple options |
| `radio` | Single selection | Choose one option |
| `submit` | Submit button | Send form |
| `reset` | Reset button | Clear form |
| `hidden` | Hidden field | Internal data |

Learn more: [W3Schools Input Types](https://www.w3schools.com/html/html_form_input_types.asp)

## Input Attributes

Common input attributes:

```html
<input type="text" 
       name="username" 
       placeholder="Enter your username"
       value="default text"
       required>
```

- `name` - Identifies the field when submitted
- `placeholder` - Hint text shown in empty field
- `value` - Default value
- `required` - Field must be filled before submit
- `maxlength` - Maximum characters allowed
- `minlength` - Minimum characters required

Learn more: [W3Schools Input Attributes](https://www.w3schools.com/html/html_form_attributes.asp)

## Form Elements

### Text Input

```html
<label for="username">Username:</label>
<input type="text" id="username" name="username" 
       placeholder="Enter username" required>
```

### Email Input

```html
<label for="email">Email:</label>
<input type="email" id="email" name="email" required>
```

### Password Input

```html
<label for="password">Password:</label>
<input type="password" id="password" name="password" required>
```

### Textarea (Multi-line text)

```html
<label for="message">Message:</label>
<textarea id="message" name="message" rows="4" 
          cols="50"></textarea>
```

### Checkbox (Multiple selections)

```html
<label>
  <input type="checkbox" name="agree"> 
  I agree to the terms
</label>
```

### Radio Buttons (Single selection)

```html
<fieldset>
  <legend>Choose your experience level:</legend>
  
  <label>
    <input type="radio" name="level" value="beginner">
    Beginner
  </label>
  
  <label>
    <input type="radio" name="level" value="intermediate">
    Intermediate
  </label>
  
  <label>
    <input type="radio" name="level" value="advanced">
    Advanced
  </label>
</fieldset>
```

### Dropdown Select

```html
<label for="country">Country:</label>
<select id="country" name="country">
  <option value="">-- Select --</option>
  <option value="usa">United States</option>
  <option value="canada">Canada</option>
  <option value="uk">United Kingdom</option>
</select>
```

### Submit Button

```html
<button type="submit">Submit Form</button>
```

Learn more: [W3Schools Form Elements](https://www.w3schools.com/html/html_form_elements.asp)

## Step-by-Step Exercise: Create a Contact Form

### Step 1: Create contact.html

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>Contact Form</title>
  </head>
  <body>
    <h1>Contact Us</h1>
    <p>Please fill out this form and we'll get back to you 
       soon!</p>
    
    <form action="/submit" method="POST">
      
      <fieldset>
        <legend>Personal Information</legend>
        
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" 
               required>
        <br><br>
        
        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" 
               required>
        <br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <br><br>
        
        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone" 
               placeholder="+1-234-567-8900">
        <br><br>
        
      </fieldset>
      
      <fieldset>
        <legend>Message</legend>
        
        <label for="subject">Subject:</label>
        <select id="subject" name="subject">
          <option value="">-- Select Subject --</option>
          <option value="inquiry">General Inquiry</option>
          <option value="support">Technical Support</option>
          <option value="feedback">Feedback</option>
          <option value="other">Other</option>
        </select>
        <br><br>
        
        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="6" 
                  cols="50" required></textarea>
        <br><br>
        
      </fieldset>
      
      <fieldset>
        <legend>Preferences</legend>
        
        <label>
          <input type="checkbox" name="newsletter">
          Subscribe to our newsletter
        </label>
        <br>
        
        <label>
          <input type="checkbox" name="updates" checked>
          Receive email updates
        </label>
        <br><br>
        
        <fieldset>
          <legend>How did you hear about us?</legend>
          
          <label>
            <input type="radio" name="source" 
                   value="search" required>
            Search Engine
          </label>
          <br>
          
          <label>
            <input type="radio" name="source" value="social">
            Social Media
          </label>
          <br>
          
          <label>
            <input type="radio" name="source" value="friend">
            Friend Referral
          </label>
          <br>
          
          <label>
            <input type="radio" name="source" value="other">
            Other
          </label>
        </fieldset>
        
      </fieldset>
      
      <br>
      <button type="submit">Send Message</button>
      <button type="reset">Clear Form</button>
      
    </form>
  </body>
</html>
```

### Step 2: Test the Form

1. Save as `contact.html`
2. Open in your browser
3. Try submitting with empty fields (required fields should prevent submission)
4. Try entering invalid email (email validation should reject it)
5. Select checkboxes, radio buttons, and dropdowns
6. Try the Reset button to clear the form

## Step-by-Step Exercise: Create a Registration Form

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>Registration Form</title>
  </head>
  <body>
    <h1>Create Account</h1>
    
    <form action="/register" method="POST">
      
      <label for="username">Username:</label>
      <input type="text" id="username" name="username" 
             minlength="3" maxlength="20" required>
      <br><br>
      
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>
      <br><br>
      
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" 
             minlength="8" required>
      <br><br>
      
      <label for="confirmPassword">Confirm Password:</label>
      <input type="password" id="confirmPassword" 
             name="confirmPassword" minlength="8" required>
      <br><br>
      
      <label for="age">Age:</label>
      <input type="number" id="age" name="age" min="13" 
             max="120" required>
      <br><br>
      
      <label for="birthDate">Birth Date:</label>
      <input type="date" id="birthDate" name="birthDate" 
             required>
      <br><br>
      
      <fieldset>
        <legend>Gender</legend>
        <label>
          <input type="radio" name="gender" value="male">
          Male
        </label>
        <label>
          <input type="radio" name="gender" value="female">
          Female
        </label>
        <label>
          <input type="radio" name="gender" value="other">
          Other
        </label>
      </fieldset>
      <br>
      
      <label>
        <input type="checkbox" name="terms" required>
        I agree to the Terms of Service
      </label>
      <br><br>
      
      <button type="submit">Create Account</button>
      
    </form>
  </body>
</html>
```

## Form Best Practices

✅ **Do's**

- Use appropriate input types (email for email, number for numbers)
- Include `<label>` tags for accessibility
- Use `required` for essential fields
- Provide helpful placeholder text
- Use `<fieldset>` and `<legend>` to group related fields
- Include a submit button
- Clear form instructions and validation messages

❌ **Don'ts**

- Don't make forms too long (split across multiple pages if needed)
- Don't force specific formats without clear instructions
- Don't use ambiguous field names
- Don't forget labels (screen readers need them)
- Don't submit forms without validation
- Don't store passwords as plain text

## Form Validation

HTML5 provides built-in validation:

```html
<!-- Email validation -->
<input type="email" required>

<!-- Number range validation -->
<input type="number" min="1" max="100" required>

<!-- Text length validation -->
<input type="text" minlength="3" maxlength="50" required>

<!-- Pattern validation (regex) -->
<input type="text" pattern="[0-9]{3}-[0-9]{4}" 
       title="Format: 123-4567" required>
```

Learn more: [W3Schools Form Validation](https://www.w3schools.com/html/html_form_attributes.asp)

## Accessibility in Forms

```html
<form>
  <!-- Use label for every input -->
  <label for="name">Full Name:</label>
  <input type="text" id="name" name="name" required>
  
  <!-- Group related inputs with fieldset -->
  <fieldset>
    <legend>Contact Method</legend>
    <label>
      <input type="radio" name="contact" value="email">
      Email
    </label>
    <label>
      <input type="radio" name="contact" value="phone">
      Phone
    </label>
  </fieldset>
  
  <!-- Use descriptive button text -->
  <button type="submit">Send Form</button>
</form>
```

## Common Form Elements

| Element | Use Case |
|---------|----------|
| `<input type="text">` | Names, usernames, single-line text |
| `<input type="email">` | Email addresses |
| `<input type="password">` | Passwords, secrets |
| `<input type="number">` | Ages, quantities, scores |
| `<input type="date">` | Dates, birthdays |
| `<textarea>` | Long messages, comments, feedback |
| `<select>` | Dropdown lists, country selection |
| `<checkbox>` | Multiple selections from options |
| `<radio>` | Single selection from options |

## Challenge Exercise (Optional)

Create a survey form with the following:

1. At least 5 different input types (text, email, number, select, etc.)
2. Use `<fieldset>` and `<legend>` to organize questions
3. Include radio buttons for one question
4. Include checkboxes for another question
5. Add a textarea for comments
6. Use `required` on important fields
7. Add helpful placeholder text
8. Include both Submit and Reset buttons
9. Use proper `<label>` tags for accessibility
10. Test the form in your browser

## Key Takeaways

- Forms collect user input with the `<form>` element
- Use appropriate input types: email, number, password, etc.
- Always include `<label>` tags for accessibility
- Use `required` to mark mandatory fields
- Group related inputs with `<fieldset>` and `<legend>`
- `<checkbox>` allows multiple selections
- `<radio>` buttons allow only one selection
- `<textarea>` is for multi-line text input
- Test forms to verify validation works
- HTML5 provides basic client-side validation

## References

- [W3Schools HTML Forms](https://www.w3schools.com/html/html_forms.asp)
- [W3Schools Form Input Types](https://www.w3schools.com/html/html_form_input_types.asp)
- [W3Schools Form Elements](https://www.w3schools.com/html/html_form_elements.asp)
- [W3Schools Form Attributes](https://www.w3schools.com/html/html_form_attributes.asp)
- [W3Schools Form Validation](https://www.w3schools.com/html/html_form_attributes.asp)
