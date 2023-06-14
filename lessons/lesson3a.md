---
layout: default
title: Lesson 3a - Numbers
nav_order: 1

# Notice the two lines below. Since this is a sub-lesson of a lesson (Lesson 3a), it's parent is lesson 3 and it's grandparent is Lessons. Make sure to include this if you decide to have sub-lessons.
parent: Lesson 3 - Atomic Data Types
grand_parent: Lessons 
---

{: .no_toc}  
# Lesson 3a - Numbers 

In R, there are different "types" of data. The most basic types are called atomic data types. There are 5 atomic data types: numeric, integer, complex, character (strings), and logical (booleans).

In this lesson, we'll be covering the numeric, integer, and complex data types. They are all different types of numbers.

<details markdown="block">
  <summary>
    Table of Contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

## Lesson Objectives
- Use the `class()` function to see data types.
- Explore the differences between the numeric, integer, and complex data types.

<!-- ## Lesson Video
The following video demonstrates each of the steps outlined below in text.

<iframe height="416" width="100%" allowfullscreen frameborder=0 src="https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false"></iframe>
[View original here.](https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false) -->

## What Data Type Am I Working With?

The best way to see what type of data a variable is holding is by using the `class()` function.

<div class="code-example" markdown="1">

{: .label }
Input
```r
class(5)
class(5L)
class(5 + 3i)
```

{: .label .label-green }
Output
```
[1] "numeric"
[1] "integer"
[1] "complex"
```
</div>

## Numeric

The numeric type is the most common type of number. It includes all real numbers.

It's important to note that numeric numbers are approximations (they're only accurate to 15 decimal places), so some rounding errors may arise when comparing numbers. The example below showcases this.

<div class="code-example" markdown="1">

{: .label}
Input
```r
a <- 2

# We use == to compare two numbers. It returns TRUE if they're equal, FALSE otherwise. We talk more about this in more detail in lesson 3b.
a^2 == 2 # This *should* return TRUE because the square of square root 2 is 2. 
```

{: .label .label-green }
Output
```
FALSE
```
</div>

## Integer

When you're sure your data will only consist of integers, you can use the integer type. To declare a number to be an integer, add an `L` at the end of the number.

```r
a <- 2L
```

{: .note }
> If you divide two integers, R will create a numeric output rather than an integer. If you meant to do integer division, you still need to use the %/% operator.
> 
> <div markdown="1">
> 
> {: .label }
> Input
> ```r
> class(11L / 2L)
> class(11L %/% 2L) 
> ```
> 
> {: .label .label-green }
> Output
> ```
> [1] "numeric"
> [1] "integer"
> ```
> </div>

## Complex

R also support complex numbers.

<div class="code-example" markdown="1">

{: .label }
Input
```r
(5 + 3i) * (1i)
```

{: .label .label-green }
Output
```
-3+5i
```
</div>

[This website](https://www.cfm.brown.edu/people/dobrush/am33/R/intro/complex0.html) goes into greater detail about what R has to offer with complex numbers.

## Key Points / Summary
- You can use the `class()` function to inspect the data type of a variable or value.
- Numeric, integer, and complex numbers are the different number types R supports.
- 'Numeric' numbers are only approximations of decimal numbers and they can lead to rounding errors.