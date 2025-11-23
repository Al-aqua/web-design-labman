# Chapter 4: HTML5 - Tables & Structured Data

## Learning Objectives

By the end of this chapter, you will be able to:

- Build well-structured HTML tables with proper semantic elements
- Understand when and why to use tables
- Create tables with headers, body, and footer sections
- Organize tabular data semantically
- Style tables with basic attributes

## Concept Introduction: Tables

**Tables** organize data into rows and columns for easy comparison and
reference. Use tables for:

- Schedules and timetables
- Price comparisons
- Statistics and data
- Sports scores
- Product specifications

**Don't use tables for layout!** Tables are for tabular data only. Use
CSS for page layout instead.

Learn more: [W3Schools HTML Tables](https://www.w3schools.com/html/html_tables.asp)

## Table Elements & Structure

A table consists of:

- `<table>` - Container for the entire table
- `<thead>` - Header section (column titles)
- `<tbody>` - Body section (data rows)
- `<tfoot>` - Footer section (summary rows)
- `<tr>` - Table row
- `<th>` - Table header cell
- `<td>` - Table data cell

Example:

```html
<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Age</th>
      <th>City</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Alice</td>
      <td>25</td>
      <td>New York</td>
    </tr>
    <tr>
      <td>Bob</td>
      <td>30</td>
      <td>Los Angeles</td>
    </tr>
  </tbody>
</table>
```

Learn more: [W3Schools Table Elements](https://www.w3schools.com/html/html_table_elements.asp)

## Table Attributes

Common table attributes:

- `border` - Adds borders around cells (1 for visible borders)
- `cellpadding` - Space inside cells
- `cellspacing` - Space between cells
- `width` - Table width in pixels or percentage

Example:

```html
<table border="1" cellpadding="10" cellspacing="5" width="100%">
  <!-- Table content -->
</table>
```

Learn more: [W3Schools Table Attributes](https://www.w3schools.com/html/html_table_attributes.asp)

## Spanning Cells

Combine multiple cells using:

- `colspan` - Span across multiple columns
- `rowspan` - Span across multiple rows

Example:

```html
<table border="1">
  <tr>
    <th colspan="2">Personal Information</th>
  </tr>
  <tr>
    <td>Name</td>
    <td>Age</td>
  </tr>
  <tr>
    <td>John</td>
    <td>28</td>
  </tr>
</table>
```

Learn more: [W3Schools Colspan & Rowspan](https://www.w3schools.com/html/html_table_colspan_rowspan.asp)

## Step-by-Step Exercise: Create a Class Schedule

### Step 1: Create schedule.html

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>Class Schedule</title>
  </head>
  <body>
    <h1>Weekly Class Schedule</h1>
    
    <table border="1" cellpadding="10" cellspacing="5" 
           width="100%">
      <thead>
        <tr style="background-color: #4CAF50; color: white;">
          <th>Time</th>
          <th>Monday</th>
          <th>Tuesday</th>
          <th>Wednesday</th>
          <th>Thursday</th>
          <th>Friday</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><strong>9:00-10:00</strong></td>
          <td>Math</td>
          <td>English</td>
          <td>Math</td>
          <td>Science</td>
          <td>History</td>
        </tr>
        <tr>
          <td><strong>10:00-11:00</strong></td>
          <td>English</td>
          <td>Science</td>
          <td>English</td>
          <td>Math</td>
          <td>PE</td>
        </tr>
        <tr>
          <td><strong>11:00-12:00</strong></td>
          <td>Science</td>
          <td>Math</td>
          <td>History</td>
          <td>English</td>
          <td>Art</td>
        </tr>
        <tr style="background-color: #f0f0f0;">
          <td><strong>12:00-1:00</strong></td>
          <td colspan="5" style="text-align: center;">
            <em>Lunch Break</em>
          </td>
        </tr>
        <tr>
          <td><strong>1:00-2:00</strong></td>
          <td>PE</td>
          <td>Art</td>
          <td>PE</td>
          <td>History</td>
          <td>Math</td>
        </tr>
      </tbody>
    </table>
  </body>
</html>
```

### Step 2: Create a Price Comparison Table

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>Pricing Comparison</title>
  </head>
  <body>
    <h1>Web Hosting Plans</h1>
    
    <table border="1" cellpadding="15" width="100%">
      <thead>
        <tr style="background-color: #2196F3; color: white;">
          <th>Feature</th>
          <th>Basic</th>
          <th>Professional</th>
          <th>Enterprise</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><strong>Storage</strong></td>
          <td>10 GB</td>
          <td>100 GB</td>
          <td>Unlimited</td>
        </tr>
        <tr>
          <td><strong>Bandwidth</strong></td>
          <td>100 GB/month</td>
          <td>1 TB/month</td>
          <td>Unlimited</td>
        </tr>
        <tr>
          <td><strong>Email Accounts</strong></td>
          <td>5</td>
          <td>25</td>
          <td>Unlimited</td>
        </tr>
        <tr>
          <td><strong>Support</strong></td>
          <td>Email only</td>
          <td>Email & Chat</td>
          <td>24/7 Phone</td>
        </tr>
        <tr style="background-color: #fff3cd;">
          <td><strong>Price/Month</strong></td>
          <td style="color: green;"><strong>$9.99</strong></td>
          <td style="color: green;"><strong>$19.99</strong></td>
          <td style="color: green;"><strong>$49.99</strong></td>
        </tr>
      </tbody>
    </table>
  </body>
</html>
```

### Step 3: Create a Sports Statistics Table

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>Sports Statistics</title>
  </head>
  <body>
    <h1>Basketball Team Statistics</h1>
    
    <table border="1" cellpadding="10">
      <thead>
        <tr style="background-color: #FF9800; color: white;">
          <th>Player</th>
          <th>Games</th>
          <th>Points</th>
          <th>Assists</th>
          <th>Rebounds</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>James</td>
          <td>20</td>
          <td>425</td>
          <td>78</td>
          <td>156</td>
        </tr>
        <tr>
          <td>Michael</td>
          <td>20</td>
          <td>380</td>
          <td>92</td>
          <td>134</td>
        </tr>
        <tr>
          <td>David</td>
          <td>19</td>
          <td>298</td>
          <td>145</td>
          <td>98</td>
        </tr>
      </tbody>
      <tfoot>
        <tr style="background-color: #f0f0f0; font-weight: bold;">
          <td>Team Totals</td>
          <td>59</td>
          <td>1103</td>
          <td>315</td>
          <td>388</td>
        </tr>
      </tfoot>
    </table>
  </body>
</html>
```

## Best Practices for Tables

### ✅ Do's

- Use `<thead>`, `<tbody>`, and `<tfoot>` for semantic structure
- Use `<th>` for header cells (not `<td>`)
- Use tables only for tabular data
- Add `border="1"` for visibility
- Use `cellpadding` for spacing inside cells
- Keep tables simple and readable

### ❌ Don'ts

- Don't use tables for page layout
- Don't use nested tables (except when absolutely necessary)
- Don't forget header rows
- Don't mix data types randomly
- Don't make tables too wide for screens
- Don't leave empty cells without explanation

## Common Table Uses

| Purpose | When to Use |
|---------|------------|
| Schedule/Timetable | Time-based data with multiple days/times |
| Price Comparison | Comparing product features and prices |
| Statistics | Sports scores, research data, rankings |
| Results | Survey results, test scores |
| Directory | Lists of people with contact info |
| Specifications | Product or service details |

## Accessibility in Tables

For better accessibility:

```html
<table border="1">
  <caption>Monthly Sales Report</caption>
  <thead>
    <tr>
      <th scope="col">Product</th>
      <th scope="col">Q1</th>
      <th scope="col">Q2</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Widget A</th>
      <td>$5000</td>
      <td>$6000</td>
    </tr>
  </tbody>
</table>
```

- `<caption>` - Describes the table purpose
- `scope="col"` - Indicates column headers
- `scope="row"` - Indicates row headers

Learn more: [W3Schools Table Captions](https://www.w3schools.com/html/html_table_caption.asp)

## Challenge Exercise (Optional)

Create a data table for one of the following:

1. **Student Grades** - Show students and their grades across subjects
2. **Product Inventory** - Products with quantities and prices
3. **Weather Report** - Daily forecast with temperature and conditions
4. **Work Experience** - List jobs with dates, company, and responsibilities

Requirements:
- Use proper `<thead>`, `<tbody>`, `<tfoot>` structure
- Use `<th>` for headers with `scope` attributes
- Add a `<caption>` describing the table
- Include at least one `colspan` or `rowspan`
- Style header rows with background colors
- Use `border`, `cellpadding`, and `cellspacing`
- Make sure data is clear and organized

## Key Takeaways

- Tables organize data into rows and columns
- Use `<thead>`, `<tbody>`, and `<tfoot>` for semantic structure
- `<th>` is for headers; `<td>` is for data
- Use `colspan` and `rowspan` to merge cells
- Add `border="1"` for visible table borders
- Use `cellpadding` for space inside cells
- Tables are for data, NOT for page layout
- Add captions and scope attributes for accessibility

## References

- [W3Schools HTML Tables](https://www.w3schools.com/html/html_tables.asp)
- [W3Schools Table Elements](https://www.w3schools.com/html/html_table_elements.asp)
- [W3Schools Table Attributes](https://www.w3schools.com/html/html_table_attributes.asp)
- [W3Schools Colspan & Rowspan](https://www.w3schools.com/html/html_table_colspan_rowspan.asp)
- [W3Schools Table Captions](https://www.w3schools.com/html/html_table_caption.asp)
