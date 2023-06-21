---
layout: default
title: Lesson 5 - Control Structures
nav_order: 5
parent: Lessons
---

{: .no_toc}  
# Lesson 5 - Control Structures

Control structures allow us to conditionally execute code and create loops.

<details markdown="block">
  <summary>
    Table of Contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

## Lesson Objectives
- Conditionally execute code using `if` statements.
- Loop code using `repeat`, `while`, and `for` loops.
- Learn about the `break`, and `next` keywords.

<!-- ## Lesson Video
The following video demonstrates each of the steps outlined below in text.

<iframe height="416" width="100%" allowfullscreen frameborder=0 src="https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false"></iframe>
[View original here.](https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false) -->

## Conditional Statements

### `if` Statements

With conditional statements, we can test a logical expression to decide whether or not to execute lines of code. In R, this is done using an `if` statement.

```r
if (logical) {
  # code
}
```

Take a look at the code block above. This is the general structure of an `if` statement. If the `logical` is evaluation to be `TRUE`, the code inside the curly brackets { } will execute. Otherwise, if the `logical` is evaluated to be `FALSE`, R will skip over all the code inside the curly brackets  { }.

{: .new-title }
> Exercise                                             <!-- This is where you edit the title -->
> 
> What is the output of the code block below?
>
> ```r
> myNumber <- 7
> if (myNumber < 6) {
>   cat(myNumber, "is smaller than 6")
> }
>
> if (myNumber > 6) {
>   cat(myNumber, "is larger than 6")
> }
> ```
>
> <details>
>   <summary> See Answer </summary>
>   <div markdown="1">
>   {: .note-title }                                   
> > Answer
> > 
> > 7 is larger than 6
>   </div>
> </details>

### `else` Blocks

Occasionally, you'll need to have two seperate pieces of code. One if the condition succeeds, and one if the condition fails. You can use the `else` keyword to do just that!

```r
if (logical) {
  # code1
} else {
  # code2
}
```

In the example above, the code inside the first pair of braces { } runs if the logical evaluates to be `TRUE`. Otherwise, if the logical evaluates to be `FALSE`, the code inside the second pair of braces { } will be executed.

{: .new-title }
> Exercise                                             <!-- This is where you edit the title -->
> 
> What is the output of the code block below?
>
> ```r
> p <- 0.05
> if (p < 0.05) {
>   cat("Statistically significant.")
> } else { 
>   cat("Not statistically significant.")
> }
> ```
>
> <details>
>   <summary> See Answer </summary>
>   <div markdown="1">
>   {: .note-title }                                   
> > Answer
> > 
> > Not statistically significant.
> >
> > Keep in mind that 0.05 is **not** less than 0.05.
>   </div>
> </details>

### `else if` Blocks

Sometimes, `if` and `else` is not enough. You might need to test multiple ranges of numbers. This is where the `elif` keyword comes in.

```r
if(logical1) {
  # code1
} else if(logical2) {
  # code2
} else {
  # code3
}
```

In the example above, code in `# code1` is executed if `logical` evalutes to be `TRUE`. If and only if `logical` evaluates to be `FALSE`, it will test `logical2`. If `logical2` is `TRUE`, the code in `# code2` is executed. Otherwise, the code inside `# code3` is executed.

{: .new-title }
> Exercise                                             <!-- This is where you edit the title -->
> 
> What is the output of the code block below?
>
> ```r
> mark = 67
> if (mark > 80) {
>   cat("You got an A!")
> } else if (mark > 70) {
>   cat("You got a B!")
> } else if (mark > 60) {
>   cat("You got a C!")
> } else if (mark > 50) {
>   cat("You got a D!")
> } else {
>   cat("Better luck next time!")
> }
> ```
>
> <details>
>   <summary> See Answer </summary>
>   <div markdown="1">
>   {: .note-title }                                   
> > Answer
> > 
> > You got a C!
>   </div>
> </details>

### Extra Exercises

{: .new-title }
> Exercise                                             <!-- This is where you edit the title -->
> 
> What is the output of the code block below?
>
> ```r
> mark = 74
> if (mark > 80) {
>   cat("You got an A!")
> } 
> if (mark > 70) {
>   cat("You got a B!")
> }
> if (mark > 60) {
>   cat("You got a C!")
> }
> if (mark > 50) {
>   cat("You got a D!")
> } else {
>   cat("Better luck next time!")
> }
> ```
>
> <details>
>   <summary> See Answer </summary>
>   <div markdown="1">
>   {: .note-title }                                   
> > Answer
> >
> > You got a B!  
> > You got a C! 
> > You got a D!
>   </div>
> </details>

{: .new-title }
> Exercise                                             <!-- This is where you edit the title -->
> 
> What is the output of the code block below?
>
> ```r
> heads = c(TRUE, FALSE)
> if (heads[1]) {
>   if (heads[2]) {
>     cat("You got 2 heads!")
>   } else {
>     cat("You got 1 head.")
>   }
> } else {
>   if (heads[2]) {
>     cat("You got 1 head.")
>   } else {
>     cat("You got 0 heads.")
>   }
> }
> ```
>
> <details>
>   <summary> See Answer </summary>
>   <div markdown="1">
>   {: .note-title }                                   
> > Answer
> >
> > You got 1 head.
>   </div>
> </details>

## Loops

In R , there's often a need to repeat pieces of code multiple times, whether they're exactly the same or with a slight variance.There are three different control structures to deal with looping, `repeat` loops, `while` loops and `for` loops.

### `repeat` Loops

`repeat` loops are the simplest to set up, but also the simplest to mess up. Code that appears within a `repeat` block will keep repeating until it comes across a `break` keyword.

<div class="code-example" markdown="1">

{: .label }
Input
```r
data <- c(1)

repeat {
  print(data)

  data <- c(data, length(data) + 1)

  if(length(data) == 5) {
    break
  }
}
```

{: .label .label-green }
Output
```
[1] 1
[1] 1 2
[1] 1 2 3
[1] 1 2 3 4
```
</div>

`repeat` loops are not often used because `while` loops and `for` loops simplify the break condition.

{: .warning }
If you ever find yourself using `repeat` loops, don't forget the break! You may end up in an infinite loop, requiring you to force stop the code.

### `while` Loops

The `while` loop is the next step up from the `repeat` loop. It includes the condition within the loop format, and for as long as the condition remains TRUE, the `while` loop will continue.

<div class="code-example" markdown="1">

{: .label }
Input
```r
data <- c(1)

while(length(data) < 5) {
  print(data)

  data <- c(data, length(data) + 1)
}
```

{: .label .label-green }
Output
```
[1] 1
[1] 1 2
[1] 1 2 3
[1] 1 2 3 4
```
</div>

Rather than specifying when to stop the loop, you specify a condition that must be met for the loop to continue. The condition is always checked prior to the code execution, whereas you can put the condition wherever you want inside a `repeat` loop. However, you can still use the `break` inside a `while` loop.

### `for` Loops

`for` loops are great to iterate over items in a collection. 

<div class="code-example" markdown="1">

{: .label }
Input
```r
data <- c(1, 7, 3, 5, 8, 2, 3)
sum <- 0

for(value in data) {
  sum <- sum + value
}

print(sum)
```

{: .label .label-green }
Output
```
[1] 29
```
</div>

In the `for` loop above, we iterate over every item in the vector of data we created. We then add that value to the `sum` variable. Once we go through all the values, we print the `sum`.

Another common use for the `for` loop is to iterate over a vector of consecutive integers using the `:` operator.

<div class="code-example" markdown="1">

{: .label }
Input
```r
for(value in 1:10) {
  cat("This is loop #", value, "\n", sep="")
}
```

{: .label .label-green }
Output
```
This is loop #1
This is loop #2
This is loop #3
This is loop #4
This is loop #5
This is loop #6
This is loop #7
This is loop #8
This is loop #9
This is loop #10
```
</div>

## Key Points / Summary
- You can use `if` statements to create conditional code.
- Use `repeat`, `while`, and `for` loops to loop code or iterate through containers. 
