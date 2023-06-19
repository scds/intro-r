---
layout: default
title: Lesson 4b - Matrix
nav_order: 2
parent: Lesson 4 - Collections
grand_parent: Lessons
---

{: .no_toc}  
# Lesson 4b - Matrix

In this lesson, we cover the matrix container.

<details markdown="block">
  <summary>
    Table of Contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

## Lesson Objectives
- Create a matrix and access its contents

<!-- ## Lesson Video
The following video demonstrates each of the steps outlined below in text.

<iframe height="416" width="100%" allowfullscreen frameborder=0 src="https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false"></iframe>
[View original here.](https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false) -->

## What's a Matrix?

A matrix is a two dimensional container similar to a vector (you can think of it almost like a vector of vectors). Just like vectors, the elements of a matrix must be of the same data type.

## Creating a List

To create a matrix, we need to use the `matrix(data, nrow, ncol)` function.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myMatrix <- matrix(c(1,2,3,4,5,6), 2, 3)
myMatrix
```

{: .label .label-green }
Output
```
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
```
</div>

You can also set `byrow` to `TRUE` if you want the matrix to be filled by row first.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myMatrix <- matrix(c(1,2,3,4,5,6), 2, 3, byrow=TRUE)
myMatrix
```

{: .label .label-green }
Output
```
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
```
</div>

## Accessing Items in a Matrix

```r
myMatrix <- matrix(c(1,2,3,4,5,6), 2, 3, byrow=TRUE)

myMatrix[1,1]       # gets item in row 1, column 1
myMatrix[2,3]       # gets item in row 2, column 3

myMatrix[2,]        # gets all items in row 2 as a vector
myMatrix[,2]        # gets all items in column 2 as a vector

myMatrix[2,, drop=FALSE]        # gets all items in row 2 as a matrix
myMatrix[,2, drop=FALSE]        # gets all items in column 2 as a matrix

myMatrix[c(1,2),]   # gets all items in rows 1 and 2 ]
myMatrix[,-1]       # gets all items except in column 1

myMatrix[,]         # gets all items
```

If an indexing operation results in a one-row or one-column matrix, R will transform the output to a vector. You can disable this by setting `drop` to `FALSE`.

## Modifying a Value in a Matrix

Just like with vectors, index the value you want to change and set that to your new value.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myMatrix <- matrix(c(1,2,3,4,5,6), 2, 3, byrow=TRUE)
myMatrix[1,2] <- 25
myMatrix
```

{: .label .label-green }
Output
```
     [,1] [,2] [,3]
[1,]    1   25    3
[2,]    4    5    6
```
</div>

## Other Useful Functions

### Getting the Dimensions of a Matrix
The `dim()` function will tell you the dimensions of a matrix.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myMatrix <- matrix(c(1,2,3,4,5,6), 2, 3, byrow=TRUE)
dim(myMatrix)
```

{: .label .label-green }
Output
```
[1] 2 3
```
</div>

### Transposing a Matrix
You can get the transpose of a matrix using the `t()` function.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myMatrix <- matrix(c(1,2,3,4,5,6), 2, 3, byrow=TRUE)
t(myMatrix)
```

{: .label .label-green }
Output
```
     [,1] [,2]
[1,]    1    4
[2,]    2    5
[3,]    3    6
```
</div>

### Adding a Row/Column to a Matrix
You can add a row or column to a matrix using the `rbind()` and `cbind()` matrix.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myMatrix <- matrix(c(1,2,3,4,5,6), 2, 3, byrow=TRUE)
myMatrix <- rbind(myMatrix, c(7, 8, 9))
myMatrix
```

{: .label .label-green }
Output
```
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9
```
</div>

## Key Points / Summary

- A matrix is similar to a vector, but in two dimensions.
- Just like vectors, all data types must be of the same type.
