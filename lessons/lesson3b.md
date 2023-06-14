---
layout: default
title: Lesson 3b - Logicals (Booleans)
nav_order: 2
parent: Lesson 3 - Atomic Data Types
grand_parent: Lessons
---

{: .no_toc}  
# Lesson 3b - Logicals (Booleans)

Logicals, otherwise known as booleans, consist of two values: TRUE and FALSE.

<details markdown="block">
  <summary>
    Table of Contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

## Lesson Objectives
- Learn what logicals are.
- Use logical operators.
- Compare numerical values.

<!-- ## Lesson Video
The following video demonstrates each of the steps outlined below in text.

<iframe height="416" width="100%" allowfullscreen frameborder=0 src="https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false"></iframe>
[View original here.](https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false) -->

## Creating a Logical

In R, `TRUE` and `FALSE` are the only two logical values. If you want to create a logical variable, assign the variable to be `TRUE` or `FALSE`.

```r
myLogical <- TRUE
```

## Logical Operators

Logicals have their own set of algebraic rules known as Boolean Algebra.

The three most common operations are listed in the table below.

| Logical Operator | Keyword |
|------------------|:-------:|
| AND              |     &   |
| OR               |     \|  |
| NOT              |     !   |

### AND

The AND operator results in True if both booleans are already True. Otherwise, it becomes False.

<div class="code-example" markdown="1">

{: .label }
Input
```r
a = TRUE
b = TRUE
c = FALSE

a & b
a & c
```

{: .label .label-green }
Output
```
TRUE
FALSE
```
</div>

### OR

The OR operator results in True if at least one boolean is True. Otherwise, it becomes False.

<div class="code-example" markdown="1">

{: .label }
Input
```r
a = TRUE
b = TRUE
c = FALSE

a | c
c | c
```

{: .label .label-green }
Output
```
TRUE
FALSE
```
</div>

### NOT

The NOT operator reverses the current value. True becomes False, and False becomes True.

<div class="code-example" markdown="1">

{: .label }
Input
```r
a = True
c = False

!a
!c
```

{: .label .label-green }
Output
```
FALSE
TRUE
```
</div>

## Order of Logical Operations

Just like regular algebra, logicals have their own order of operations. The order is listed in the table below. Operations at the top have higher precedence.

| Logical Operator | Keyword |
|------------------|:-------:|
| Brackets         |    ( )  |
| NOT              |     !   |
| AND              |     &   |
| OR               |     \|  |

## Numerical Comparisons

We can also compare the values of expressions to generate a boolean as well.

The six comparison operators are shown in the table below.

| Comparison            | Symbol |
|-----------------------|:------:|
| Less than             |    <   |
| Less than or equal    |   <=   |
| Greater than          |    >   |
| Greater than or equal |   >=   |
| Equality              |   ==   |
| Inequality            |   !=   |

<div class="code-example" markdown="1">
{: .label }

Input
```r
5 < 8
2 < 1
3 == 3.0
```

{: .label .label-green }
Output
```
TRUE
FALSE
TRUE
```
</div>


## Key Points / Summary
- A boolean is a TRUE/FALSE value.
- `&`, `|`, and `~` are three boolean operators.
- You can compare numerical values.
