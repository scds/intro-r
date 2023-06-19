---
layout: default
title: Lesson 2 - Variables
nav_order: 2
parent: Lessons
---

{: .no_toc}  
# Lesson 2 - Variables

How do we store data that we can use and modify? Using variables!

<details markdown="block">
  <summary>
    Table of Contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

## Lesson Objectives
- Use variables to store and modify data.

<!-- ## Lesson Video
The following video demonstrates each of the steps outlined below in text.

<iframe height="416" width="100%" allowfullscreen frameborder=0 src="https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false"></iframe>
[View original here.](https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false) -->

## Identifiers

Identifiers are variable names. When you create, use, or modify a variable, you refer to the variable by its identifier.

R has some rules and restrictions for identifiers.
- Identifiers can consist of letters (uppercase and lowercase), digits, periods (.), and underscores (_).
- All identifiers must start with a letter or with a period (.).
  - If the identifier starts with a period, it cannot be followed by a digit.
- There are some identifiers reserved for R's use only; they're usually common words like "if", "else", "repeat", etc.
  - You can find a full list here: <https://www.geeksforgeeks.org/r-keywords/>
- Identifiers are case-sensitive.
  - `myVariable` and `MYVARIABLE` are considered two different variables.

{: .new-title }
> Exercise                                             <!-- This is where you edit the title -->
> 
> Which of the following are valid variable names?
>
> - myVariable
> - _digits
> - 10_hp
> - repeat
> - .1name
>
> <details>
>   <summary> See Answer </summary>
>   <div markdown="1">
>   {: .note-title }                                   
> > Answer
> > 
> > - myVariable is a valid variable name.
> > - _digits is **not** a valid variable because it begins with an underscore.
> > - 10_hp is **not** a valid variable name because it begins with a digit.
> > - repeat is **not** a valid variable name because it's one of R's reserved keywords.
> > - .1name is **not** a valid variable name because the period is followed by a digit.
>   </div>
> </details>

## Assigning Values to Variables

The format to create a variable is:

```r
identifier <- value
```

Suppose we wanted to assign `myVariable` the value of 10. We would do

```r
myVariable <- 10
```

The line above is read as "`myVariable` is assigned the value of 10."

If we decide later on that we want to reassign the value of `myVariable` to something else, we would again do

```r  
myVariable <- <new value>
```

and that would set the value of `myVariable` to our new value.

{: .new-title }
> Exercise                                             <!-- This is where you edit the title -->
> 
> What is the value of **a** after this code is executed?
>
> ```r
> a <- 2
> b <- 20
> a <- b
> b <- 3
> ```
> 
> <details>
>   <summary> See Answer </summary>
>   <div markdown="1">
>   {: .note-title }                                   
> > Answer
> > 
> > The value of **a** is 20.
> > 
> > - Going step-by-step, **a** is assigned the value of 2.     (a = 2)  
> > - Then, **b** is assigned the value of 20.                  (a = 2, b = 20)  
> > - **a** is assigned the value of **b**, which is 20.            (a = 20, b = 10)  
> > - Finally, **b** is assigned the value of 3.                (a = 20, b = 3)
>   </div>
> </details>

## Using Variables in Math

If we want to use a variable in our math expression, we just reference the variable using its identifier.

```r
5 * myVariable
```

and it outputs the answer.

## Finding All Defined Variables

Aside from using the `Environment` tab in RStudio, we can also use the `ls()` function to get a list of all our defined variables.

<div class="code-example" markdown="1">

{: .label }
Input
```r
a <- 5
b <- 2
myVariable <- 2.5
.myVariable <- 2.6

ls()
```

{: .label .label-green }
Output
```
[1] "a"          "b"          "myVariable"
```
</div>

You'll notice that any variables with an identifier that starts with a period (.) are not shown. If you want to show them as part of the output, you have to define `all.name = TRUE` inside the `ls()` function.

<div class="code-example" markdown="1">

{: .label }
Input
```r
a <- 5
b <- 2
myVariable <- 2.5
.myVariable <- 2.6

ls(all.name <- TRUE)
```

{: .label .label-green }
Output
```
[1] ".myVariable"          "a"          "b"          "myVariable"
```
</div>

## Deleting a Variable

If you wanted to delete a variable, you can use the `rm()` function. Usually, deleting a variable is done to prevent accidental usage of it, but it's not required or done often.

```r
myVariable <- 5
rm(myVariable)
```

## Key Points / Summary

- You can use variables to store data.

