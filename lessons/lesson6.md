---
layout: default
title: Lesson 6 - Functions
nav_order: 6
parent: Lessons
---

{: .no_toc}  
# Lesson 6 - Functions

If you find yourself using the same set of code throughout your program multiple times, functions will help immensely.

<details markdown="block">
  <summary>
    Table of Contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

## Lesson Objectives
- Use functions to create reusable code

<!-- ## Lesson Video
The following video demonstrates each of the steps outlined below in text.

<iframe height="416" width="100%" allowfullscreen frameborder=0 src="https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false"></iframe>
[View original here.](https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false) -->

## What Are Functions?

A function contains lines of code that are run when the function is called. Functions can take in any number of inputs, or no inputs at all. Functions can also output a value, but they don't have to either.

Python provides lots of built-in functions, but you can also make your own.

## When Should I Use Functions?

If you find yourself using the same set of code multiple times throughout your program, you should make a function for it.

Benefits of functions:
- You avoid repeating the same set of code.
- You only have to edit the code once for it to apply to all areas you use the function.?

## Creating a Function

The general format to create a function is shown below.

```r
functionName <- function() {
  code
}
```

Just like variables, functions also need an identifier. The same identifier rules apply.

Inside the curly brackets { }, you put your lines of code.

## Calling a Function

The format for calling a function you created is the same as calling the built-in R functions.

```r
functionName()
```

## Function Arguments

As mentioned earlier, functions can take in input values (otherwise known as arguments). 

<div class="code-example" markdown="1">

{: .label }
Input
```r
hello <- function(name){
  print(cat("Hello", name, "!"))
}

hello("Charlie")
hello("Jessica")
```

{: .label .label-green }
Output
```
Hello Charlie !
Hello Jessica !
```
</div>

## Parameters vs Arguments

The terms parameter and argument often get mixed up and used interchangebly. They do however have different meanings.

**Parameter**
: The variable inside the function definition. In the last example, this would be the `name`.

**Argument**
: The value that is sent to the function. In the last example, this would be "Charlie" and "Jessica".

## Positional and Keyword Arguments

When calling a function with parameters, the order of your arguments should match up the order that the parameters appear in. These are positional arguments.

<div class="code-example" markdown="1">

{: .label }
Input
```r
hello <- function(d, c, b, a){
  print(a)
  print(b)
  print(c)
  print(d)
}

hello(4, 3, 2, 1)
```

{: .label .label-green }
Output
```
1
2
3
4
```
</div>

Alternatively, if you don't know what order you should put your arguments in, you can assign your arguments by name. These are called keyword arguments.

<div class="code-example" markdown="1">

{: .label }
Input
```r
hello <- function(d, c, b, a){
  print(a)
  print(b)
  print(c)
  print(d)
}

hello(a=1, b=2, c=3, d=4)
```

{: .label .label-green }
Output
```
1
2
3
4
```
</div>

## Default Arguments

You can also assign parameters a default value. These are useful if you want to create optional parameters.

<div class="code-example" markdown="1">

{: .label }
Input
```r
hello <- function(d, c, b=4, a=5){
  print(a)
  print(b)
  print(c)
  print(d)
}

hello(1, 2)
```

{: .label .label-green }
Output
```
5
4
2
1
```
</div>

Typically, any parameters with default values appear at the end.

## Return Values

So far, all of our functions have just created text in the console. We can also output values using the `return()` function.

<div class="code-example" markdown="1">

{: .label }
Input
```r
quadratic <- function(a, b, c){
  x1 <- ( -b + sqrt(b^2 - 4*a*c) ) / (2 * a)
  x2 <- ( -b - sqrt(b^2 - 4*a*c) ) / (2 * a)
  
  value <- c(x1, x2)
  return(value)
}

equation1 <- quadratic(1, 5, 6)
equation2 <- quadratic(1, 5, 4)

cat("The two roots of x^2 + 5x + 6 are", equation1[1], "and", equation1[2])
cat("The two roots of x^2 + 5x + 4 are", equation2[1], "and", equation2[2])
```

{: .label .label-green }
Output
```
The two roots of x^2 + 5x + 6 are -2 and -3
The two roots of x^2 + 5x + 4 are -1 and -4
```
</div>

## Key Points / Summary

- You can create reusable pieces of code using functions.
- Parameters are the variables inside the function declaration, whereas arguments are the values passed to the function.
