---
layout: default
title: Lesson 4a - Vectors
nav_order: 1

# Notice the two lines below. Since this is a sub-lesson of a lesson (Lesson 3a), it's parent is lesson 3 and it's grandparent is Lessons. Make sure to include this if you decide to have sub-lessons.
parent: Lesson 4 - Collections
grand_parent: Lessons 
---

{: .no_toc}  
# Lesson 4a - Vectors

Collections refer to any data type that groups values up together. In R, vectors and lists are two types of collections.

<details markdown="block">
  <summary>
    Table of Contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

## Lesson Objectives
- Use vectors to group values of the same data type
- Access values in vectors

<!-- ## Lesson Video
The following video demonstrates each of the steps outlined below in text.

<iframe height="416" width="100%" allowfullscreen frameborder=0 src="https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false"></iframe>
[View original here.](https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false) -->

## Creating a Vector

The format to create a vector is the following:

```r
myVector <- c(item1, item2, item3, ...)
```

All items in a vector must be of the same type.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myVector <- c(1, 2.0, 6, -4)
myVector2 <- c(1, 4.2, 3.2, "hello")

myVector
myVector2
```

{: .label .label-green }
Output
```
[1]  1  2  6 -4
[1] "1"     "4.2"   "3.2"   "hello"
```
</div>

In the example above, you'll notice that in `myVector2`, all the numeric data values are turned into strings. Rather than throwing an error, R will do what it think is most appropriate and turn all the values into one data type.

## Concatenating Vectors

To concatenate vectors, you can use the same `c()` function.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myVector <- c(1, 2.0, 6, -4)
myVector2 <- c(5, 6, 7, 8)

myVector3 <- c(myVector, myVector2)
myVector3
```

{: .label .label-green }
Output
```
[1]  1  2  6 -4  5  6  7  8
```
</div>

## Storing Values by Name

You can also store individual values in a vector by name (usually referred to as a key), which will be useful when indexing values (coming up in the next section).

<div class="code-example" markdown="1">

{: .label }
Input
```r
myVector <- c(first = 1, second = 2, third = 3, fourth = 4)
myVector
```

{: .label .label-green }
Output
```
first second  third fourth 
    1      2      3      4
```
</div>

## Accessing Vector Contents

There are several ways to access the individual contents of a vector.

{: .note }
Just like with strings, in R, indexing starts at 1.

```r
myVector <- c(a = "apple", b = "banana", c = "cow", d = "donkey", e = "elephant")

myVector[3]             # This returns the third value in the vector.
myVector[2:4]           # This returns every value starting from the second value until the fourth value. (inclusive)
myVector[c(1, 3, 4)]    # This returns specific values #1, #3, and #4.
myVector[-2]            # This returns all items excluding the second item.
myVector[-2:-4]         # This returns all items excluding all values from the second item until the fourth item. (inclusive)
myVector[c(-2, -4)]     # This returns all items excluding the speicifc values #2 and #4.

# The following lines access vectors with items that are named
myVector['a']           # This returns the value with the name 'a'
myVector[c('a', 'b')]   # This returns the values with the name 'a' and 'b'
```

{: .note }
Try these in RStudio and experiment, the best way to learn R is to code!

## Modifying a Value in a Vector
To modify the value at a specific, index the value as usual and assign a value to it just like you would a regular variable.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myVector <- c(3, 4, 5)
myVector[3] <- 6
myVector
```

{: .label .label-green }
Output
```
[1] 3 4 6
```
</div>

## Key Points / Summary
- You can use vectors to make a collection of values.
- Values in a vector must be of the same data type.
- You can access and modify values in a vector using indexing.
- Indexes in R start at 1.
