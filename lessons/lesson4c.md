---
layout: default
title: Lesson 4c - Arrays
nav_order: 3
parent: Lesson 4 - Collections
grand_parent: Lessons
---

{: .no_toc}  
# Lesson 4c - Arrays

Arrays are yet another container type similar to vectors and matrices.

<details markdown="block">
  <summary>
    Table of Contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

## Lesson Objectives
- Briefly mention arrays

<!-- ## Lesson Video
The following video demonstrates each of the steps outlined below in text.

<iframe height="416" width="100%" allowfullscreen frameborder=0 src="https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false"></iframe>
[View original here.](https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false) -->

## What is an Array?

An array can be thought of as a vector of matrices, or a three dimensional container. It has x rows, y columns, and z tables of x by y.

Just like vectors and matrices, they can only contain data of a single type.

## Creating an Array

The format to create an array is the following:

```r
myArray = array(vector, c(nRow, nCol, nTables))
```

Where `vector` is a vector with the contents of the array, `nRow` is the number of rows, `nCol` is the number of columns, and `nTables` is the number of tables.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myArray = array(1:30, c(5, 2, 3)) # This creates 3 matrices that have 5 rows and 2 columns. The contents of the array are the consecutive numbers from 1 to 30.
myArray
```

{: .label .label-green }
Output
```
, , 1

     [,1] [,2]
[1,]    1    6
[2,]    2    7
[3,]    3    8
[4,]    4    9
[5,]    5   10

, , 2

     [,1] [,2]
[1,]   11   16
[2,]   12   17
[3,]   13   18
[4,]   14   19
[5,]   15   20

, , 3

     [,1] [,2]
[1,]   21   26
[2,]   22   27
[3,]   23   28
[4,]   24   29
[5,]   25   30
```
</div>

## Accessing Items in an Array

Accessing works just like with matrices, but with an added dimension.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myArray = array(1:30, c(5, 2, 3))
myArray[2,1,2] # Gets the item in row2, column1, table2
```

{: .label .label-green }
Output
```
[1] 12
```
</div>

Just like matrices, you can also index for rows, columns, or tables of information at a time.

## Accessing Items like a Matrix

You can also access items using the matrix notation.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myArray = array(1:30, c(5, 2, 3))
myArray[,1,c(1,2)] # Gets the items in column1, table1&2
```

{: .label .label-green }
Output
```
     [,1] [,2]
[1,]    1   11
[2,]    2   12
[3,]    3   13
[4,]    4   14
[5,]    5   15
```
</div>

## Modifying Values in an Array

Modifying values in an array works just like any other container.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myArray = array(1:30, c(5, 2, 3))
myArray[1,1,1] = -1
myArray
```

{: .label .label-green }
Output
```
, , 1

     [,1] [,2]
[1,]   -1    6
[2,]    2    7
[3,]    3    8
[4,]    4    9
[5,]    5   10

, , 2

     [,1] [,2]
[1,]   11   16
[2,]   12   17
[3,]   13   18
[4,]   14   19
[5,]   15   20

, , 3

     [,1] [,2]
[1,]   21   26
[2,]   22   27
[3,]   23   28
[4,]   24   29
[5,]   25   30
```
</div>

## Key Points / Summary

- Arrays are another type of container that R has to offer.
- Just like vectors and matrices, arrays can only contain data of a single type.