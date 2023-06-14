---
layout: default
title: Lesson 1 - Using R as a Calculator
nav_order: 1
parent: Lessons
---
<!-- 
This page is an example lesson template.
Add, edit, or remove any content below for the workshop in question. -->

<!-- Putting a {: .no_toc} above a header removes it from the table of contents -->

{: .no_toc}  
# Lesson 1 - Using R as a Calculator 

What better way to start learning R than to use it as a calculator?

<!-- This is your table of contents. You don't need to touch it, it automatically creates it when you add or remove headers. If you do not want a header to be included, put {: .no_toc } above the header line, as you can see above with Lesson 1 - Lesson Name. Make sure that there's also an empty line above {: .no_toc }... Markdown is picky about this :( -->
<details markdown="block">
  <summary>
    Table of Contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

<!-- Here are your learning objectives. Just like in the introduction, but more specific for this lesson. -->
## Lesson Objectives
- Learn about the mathematical operations R supports.

<!-- A video for your lesson (if applicable)
## Lesson Video
The following video demonstrates each of the steps outlined below in text.

<iframe height="416" width="100%" allowfullscreen frameborder=0 src="https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false"></iframe>
[View original here.](https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false) -->

<!-- Text content format for your lessons if you don't want to rely on videos, or want to provide another format of learning consumption. -->
## Math Operations

Math expressions in R work similarly to how math expressions work with other programs and languages.

<div class="code-example" Markdown="1">
{: .label }
Input
```python
3 + 3
```

{: .label .label-green }
Output
```
6
```
</div>

R supports addition (+), subtraction (-), multiplication (*), division (/), exponents (^), modulus (%%), and integer division (%/%). 

When there are multiple operations in an expression, R follows the typical order of operations listed below.

| Operation                                         | Symbol      |
|---------------------------------------------------|-------------|
| Parentheses                                       | ( )         |
| Exponents                                         | ^           |
| Modulus and Floor Division                        | %%, %/%     |
| Multiplication, Division                          | *, /        |
| Addition and Subtraction                          | +, -        |

<div class="code-example" Markdown="1">
{: .label }
Input
```python
24 %% (4 * (1 + 5))
```

{: .label .label-green }
Output
```
0
```
</div>

R also supports decimal numbers as well as complex numbers. Complex numbers are briefly mentioned in [Lesson 3a.](lesosn3a)

<div class="code-example" Markdown="1">
{: .label }
Input
```r
12.3 ** 1.5
```

{: .label .label-green }
Output
```
43.13777
```
</div>

## Other Math Functions
R comes with some built-in math functions, requiring no extra setup. Getting the absolute value of a number, finding the square root, rounding numbers, and more.

<div class="code-example" Markdown="1">

{: .label }
Input
```r
sqrt(16)
```

{: .label .label-green }
Output
```
4
```
</div>

A full list of built-in math functions can be found here: <https://www.javatpoint.com/r-built-in-functions>.

## Key Points / Summary
- You can use R as a calculator.