# Chapter 10: JavaScript Basics - Interactivity & Functionality

## Learning Objectives

By the end of this chapter, you will be able to:

- Write basic JavaScript syntax with variables and data types
- Handle user input and manipulate the DOM
- Create event listeners for interactivity
- Build simple interactive web applications

## Concept Introduction: JavaScript in Web Design

**JavaScript** adds interactivity and behavior to web pages. While HTML
provides structure and CSS provides styling, JavaScript creates dynamic
functionality and responds to user actions.

Learn more: [W3Schools JavaScript](https://www.w3schools.com/js/)

## Including JavaScript

The recommended way is to link an external script at the bottom of the
`<body>` tag:

```html
<!DOCTYPE html>
<html>
  <body>
    <h1>Hello World</h1>
    <script src="script.js"></script>
  </body>
</html>
```

You can also write JavaScript directly in HTML:

```html
<script>
  console.log("Hello from JavaScript!");
</script>
```

Learn more: [W3Schools JavaScript HTML](https://www.w3schools.com/js/js_whereto.asp)

## Variables and Data Types

Use `let` and `const` to declare variables:

```javascript
let name = "Alice";           /* String */
let age = 25;                 /* Number */
let isActive = true;          /* Boolean */
const MAX = 100;              /* Constant */

let colors = ["red", "green", "blue"];  /* Array */
let person = {name: "Alice", age: 25};  /* Object */

/* Access values */
console.log(colors[0]);       /* "red" */
console.log(person.name);     /* "Alice" */
```

Learn more: [W3Schools Variables](https://www.w3schools.com/js/js_variables.asp)

## DOM Manipulation

**Getting elements:**

```javascript
let element = document.getElementById("myId");
let element = document.querySelector("#myId");
let elements = document.querySelectorAll(".myClass");
```

**Updating content:**

```javascript
element.textContent = "New text";
element.innerHTML = "<strong>Bold</strong>";
element.classList.add("active");
element.id = "newId";
```

Learn more: [W3Schools DOM](https://www.w3schools.com/js/js_htmldom.asp)

## Basic Operators

```javascript
/* Arithmetic */
let sum = 10 + 5;           /* 15 */
let product = 10 * 5;       /* 50 */

/* Comparison */
10 === 10;                  /* true (strict equality) */
10 > 5;                     /* true */
10 < 5;                     /* false */

/* Logical */
true && false;              /* false (AND) */
true || false;              /* true (OR) */
!true;                      /* false (NOT) */
```

Learn more: [W3Schools Operators](https://www.w3schools.com/js/js_operators.asp)

## Control Flow

**If statements:**

```javascript
if (age >= 18) {
  console.log("You are an adult");
} else {
  console.log("You are a minor");
}
```

**Loops:**

```javascript
/* For loop */
for (let i = 0; i < 5; i++) {
  console.log(i);
}

/* For-of loop */
let colors = ["red", "green", "blue"];
for (let color of colors) {
  console.log(color);
}
```

Learn more: [W3Schools If Else](https://www.w3schools.com/js/js_if_else.asp), [W3Schools Loops](https://www.w3schools.com/js/js_loop_for.asp)

## Functions

**Functions** are reusable blocks of code:

```javascript
function greet(name) {
  return "Hello, " + name;
}

console.log(greet("Alice"));  /* "Hello, Alice" */

/* Arrow function */
const add = (a, b) => a + b;
console.log(add(5, 3));       /* 8 */
```

Learn more: [W3Schools Functions](https://www.w3schools.com/js/js_functions.asp)

## Event Handling

**Event listeners** respond to user interactions:

```javascript
let button = document.getElementById("myButton");

button.addEventListener("click", () => {
  console.log("Button clicked!");
});

/* Common events: click, input, submit, keydown, mouseenter */
let input = document.getElementById("myInput");
input.addEventListener("input", (event) => {
  console.log("User typed: " + event.target.value);
});

let form = document.getElementById("myForm");
form.addEventListener("submit", (event) => {
  event.preventDefault();  /* Prevent form submission */
  console.log("Form submitted!");
});
```

Learn more: [W3Schools Events](https://www.w3schools.com/js/js_events.asp)

## Step-by-Step Exercise: Create an Interactive Calculator

### Step 1: Create calculator.html

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>Simple Calculator</title>
    <link rel="stylesheet" href="calculator.css">
  </head>
  <body>
    <div class="calculator-container">
      <h1>Simple Calculator</h1>
      
      <input type="number" id="num1" placeholder="First number">
      <input type="number" id="num2" placeholder="Second number">
      
      <div class="button-group">
        <button id="addBtn" class="btn">Add</button>
        <button id="subtractBtn" class="btn">Subtract</button>
        <button id="multiplyBtn" class="btn">Multiply</button>
        <button id="divideBtn" class="btn">Divide</button>
      </div>
      
      <div id="result" class="result"></div>
    </div>
    
    <script src="calculator.js"></script>
  </body>
</html>
```

### Step 2: Create calculator.css

```css
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.calculator-container {
  background: white;
  padding: 40px;
  border-radius: 8px;
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
  max-width: 400px;
  width: 100%;
}

h1 {
  text-align: center;
  color: #333;
  margin-bottom: 30px;
  font-size: 28px;
}

input {
  width: 100%;
  padding: 12px;
  margin-bottom: 15px;
  border: 2px solid #ddd;
  border-radius: 4px;
  font-size: 16px;
  transition: border-color 0.3s;
}

input:focus {
  outline: none;
  border-color: #667eea;
}

.button-group {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 10px;
  margin-bottom: 20px;
}

.btn {
  padding: 12px;
  background-color: #667eea;
  color: white;
  border: none;
  border-radius: 4px;
  font-size: 16px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s;
}

.btn:hover {
  background-color: #5568d3;
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(102, 126, 234, 0.4);
}

.btn:active {
  transform: translateY(0);
}

.result {
  background-color: #f0f0f0;
  padding: 20px;
  border-radius: 4px;
  text-align: center;
  font-size: 20px;
  color: #333;
  min-height: 30px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.result.error {
  background-color: #fee;
  color: #c33;
}

.result.success {
  background-color: #efe;
  color: #3c3;
}
```

### Step 3: Create calculator.js

```javascript
/* Get elements */
const num1Input = document.getElementById("num1");
const num2Input = document.getElementById("num2");
const resultDiv = document.getElementById("result");

const addBtn = document.getElementById("addBtn");
const subtractBtn = document.getElementById("subtractBtn");
const multiplyBtn = document.getElementById("multiplyBtn");
const divideBtn = document.getElementById("divideBtn");

/* Perform calculation */
function performCalculation(operation) {
  const num1 = parseFloat(num1Input.value);
  const num2 = parseFloat(num2Input.value);
  
  /* Validate inputs */
  if (isNaN(num1) || isNaN(num2)) {
    showError("Please enter valid numbers");
    return;
  }
  
  let result;
  
  switch (operation) {
    case "add":
      result = num1 + num2;
      break;
    case "subtract":
      result = num1 - num2;
      break;
    case "multiply":
      result = num1 * num2;
      break;
    case "divide":
      if (num2 === 0) {
        showError("Cannot divide by zero");
        return;
      }
      result = num1 / num2;
      break;
    default:
      showError("Unknown operation");
      return;
  }
  
  showResult(result);
}

/* Display result */
function showResult(value) {
  resultDiv.textContent = "Result: " + value.toFixed(2);
  resultDiv.classList.remove("error");
  resultDiv.classList.add("success");
}

/* Display error */
function showError(message) {
  resultDiv.textContent = message;
  resultDiv.classList.remove("success");
  resultDiv.classList.add("error");
}

/* Add event listeners */
addBtn.addEventListener("click", () => performCalculation("add"));
subtractBtn.addEventListener("click", () => performCalculation("subtract"));
multiplyBtn.addEventListener("click", () => performCalculation("multiply"));
divideBtn.addEventListener("click", () => performCalculation("divide"));
```

## Step-by-Step Exercise: Create an Interactive Quiz

### HTML Structure

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" 
          content="width=device-width, initial-scale=1">
    <title>Interactive Quiz</title>
    <link rel="stylesheet" href="quiz.css">
  </head>
  <body>
    <div class="quiz-container">
      <h1>JavaScript Quiz</h1>
      
      <div id="quizContent">
        <div id="startScreen">
          <p>Test your JavaScript knowledge!</p>
          <button id="startBtn" class="btn">Start Quiz</button>
        </div>
        
        <div id="questionScreen" style="display: none;">
          <div class="progress">
            <span id="questionNumber"></span>
          </div>
          
          <h2 id="question"></h2>
          
          <div id="options" class="options"></div>
          
          <button id="nextBtn" class="btn" style="display: none;">
            Next
          </button>
        </div>
        
        <div id="resultScreen" style="display: none;">
          <h2>Quiz Complete!</h2>
          <p id="scoreMessage"></p>
          <button id="retakeBtn" class="btn">Retake Quiz</button>
        </div>
      </div>
    </div>
    
    <script src="quiz.js"></script>
  </body>
</html>
```

### JavaScript Quiz Logic

```javascript
const questions = [
  {
    question: "What does HTML stand for?",
    options: ["Hyper Text Markup Language", "High Tech Modern Language", 
              "Home Tool Markup Language", "Hyperlinks and Text Markup Language"],
    correct: 0
  },
  {
    question: "Which symbol is used for comments in JavaScript?",
    options: ["//", "<!--", "/*", "#"],
    correct: 0
  },
  {
    question: "What keyword declares a variable in JavaScript?",
    options: ["var", "let", "const", "all of the above"],
    correct: 3
  },
  {
    question: "How do you add a comment in JavaScript?",
    options: ["# This is a comment", "<!-- This is a comment -->", 
              "// This is a comment", "-- This is a comment"],
    correct: 2
  },
  {
    question: "What does DOM stand for?",
    options: ["Data Object Model", "Document Object Model", 
              "Dynamic Object Model", "Display Object Model"],
    correct: 1
  }
];

let currentQuestion = 0;
let score = 0;
let selectedAnswer = null;

/* Get elements */
const startBtn = document.getElementById("startBtn");
const nextBtn = document.getElementById("nextBtn");
const retakeBtn = document.getElementById("retakeBtn");

const startScreen = document.getElementById("startScreen");
const questionScreen = document.getElementById("questionScreen");
const resultScreen = document.getElementById("resultScreen");

const questionNumber = document.getElementById("questionNumber");
const questionElement = document.getElementById("question");
const optionsElement = document.getElementById("options");
const scoreMessage = document.getElementById("scoreMessage");

/* Start quiz */
startBtn.addEventListener("click", () => {
  startScreen.style.display = "none";
  questionScreen.style.display = "block";
  showQuestion();
});

/* Display question */
function showQuestion() {
  const question = questions[currentQuestion];
  
  questionNumber.textContent = 
    `Question ${currentQuestion + 1} of ${questions.length}`;
  questionElement.textContent = question.question;
  
  optionsElement.innerHTML = "";
  selectedAnswer = null;
  nextBtn.style.display = "none";
  
  question.options.forEach((option, index) => {
    const optionDiv = document.createElement("div");
    optionDiv.className = "option";
    
    const input = document.createElement("input");
    input.type = "radio";
    input.name = "answer";
    input.value = index;
    input.addEventListener("change", () => {
      selectedAnswer = index;
      nextBtn.style.display = "block";
    });
    
    const label = document.createElement("label");
    label.appendChild(input);
    label.appendChild(document.createTextNode(" " + option));
    
    optionDiv.appendChild(label);
    optionsElement.appendChild(optionDiv);
  });
}

/* Next question */
nextBtn.addEventListener("click", () => {
  if (selectedAnswer === null) return;
  
  const question = questions[currentQuestion];
  if (selectedAnswer === question.correct) {
    score++;
  }
  
  currentQuestion++;
  
  if (currentQuestion < questions.length) {
    showQuestion();
  } else {
    showResults();
  }
});

/* Show results */
function showResults() {
  questionScreen.style.display = "none";
  resultScreen.style.display = "block";
  
  const percentage = Math.round((score / questions.length) * 100);
  scoreMessage.textContent = 
    `You scored ${score} out of ${questions.length} (${percentage}%)`;
}

/* Retake quiz */
retakeBtn.addEventListener("click", () => {
  currentQuestion = 0;
  score = 0;
  selectedAnswer = null;
  
  resultScreen.style.display = "none";
  startScreen.style.display = "block";
});
```

## Debugging Tips

Open the browser DevTools with **F12**:
- **Console** tab: View errors and `console.log()` messages
- **Inspector** tab: Inspect and edit HTML/CSS
- **Debugger** tab: Set breakpoints and step through code

## Key Takeaways

- JavaScript adds interactivity to web pages
- Use `let` and `const` for variables
- Data types include String, Number, Boolean, Array, Object
- DOM manipulation updates page content dynamically
- Event listeners respond to user actions
- Functions create reusable code blocks
- Operators perform calculations and comparisons
- Control flow (if/else, loops) makes decisions
- Validation ensures data quality before processing
- Testing and debugging are essential skills

## References

- [W3Schools JavaScript Tutorial](https://www.w3schools.com/js/)
- [W3Schools DOM Reference](https://www.w3schools.com/js/js_htmldom.asp)
- [W3Schools Events](https://www.w3schools.com/js/js_events.asp)
- [W3Schools Functions](https://www.w3schools.com/js/js_functions.asp)
- [W3Schools Variables](https://www.w3schools.com/js/js_variables.asp)
- [MDN JavaScript Guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide)
