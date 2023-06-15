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
- Loop code using `while` loops and `for` loops.
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

### `elif` Blocks

Sometimes, `if` and `else` is not enough. You might need to test multiple ranges of numbers. This is where the `elif` keyword comes in.

```r
if logical1:
  # code1
elif logical2:
  # code2
else:
  # code3
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
> } elif (mark > 70) {
>   cat("You got a B!")
> } elif (mark > 60) {
>   cat("You got a C!")
> } elif (mark > 50) {
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
>     print("You got 2 heads!")
>   } else {
>     print("You got 1 head.")
>   }
> } else {
>   if (heads[2]) {
>     print("You got 1 head.")
>   } else {
>     print("You got 0 heads.")
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
