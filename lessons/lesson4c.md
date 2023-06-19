---
layout: default
title: Lesson 4c - Lists
nav_order: 2
parent: Lesson 4 - Collections
grand_parent: Lessons
---

{: .no_toc}  
# Lesson 4c - Lists

Lists are another type of container that R has to offer.

<details markdown="block">
  <summary>
    Table of Contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

## Lesson Objectives
- Use lists to create containers with elements of multiple data types

<!-- ## Lesson Video
The following video demonstrates each of the steps outlined below in text.

<iframe height="416" width="100%" allowfullscreen frameborder=0 src="https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false"></iframe>
[View original here.](https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false) -->

## What is a List?

A list is a container that can contain elements of different data types, unlike vectors.

## Creating a List

The format to create a list is the following:

```r
myList = list(value1, value2, value3, ...)
```

## Storing Values by Name

Just like with vectors, we can give values keys so that we can reference them by name later on.

```r
myList = list(a = "apple", b = 2, c = TRUE)
```

## Accessing Items in a List

Lists are strange when it comes to indexing.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myList <- list(2, 2, 3, "a string", TRUE)

# if we were to access the first index like normal, we would get a list of 1 element
myList[1]
```

{: .label .label-green }
Output
```
[[1]]
[1] 2
```
</div>

To get the actual value, we need to use double square brackets [[ ]].

<div class="code-example" markdown="1">

{: .label }
Input
```r
myList <- list(2, 2, 3, "a string", TRUE)

myList[[1]]
```

{: .label .label-green }
Output
```
[1] 2
```
</div>

This makes a huge difference when you're using the values given to you.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myList <- list(2, 2, 3, "a string", TRUE)

myList[[1]] + 1     # Correct
myList[1] + 1       # Incorrect
```

{: .label .label-green }
Output
```
[1] 3
Error in myList[1] + 1 : non-numeric argument to binary operator
```
</div>

### Accessing Values by Name

<div class="code-example" markdown="1">

{: .label }
Input
```r
myList = list(a = "apple", b = 2, c = TRUE)
myList[["a"]]
```

{: .label .label-green }
Output
```
[1] "apple"
```
</div>

### Accessing Multiple Items

<div class="code-example" markdown="1">

{: .label }
Input
```r
myList = list(2, 2, 3, "a string", TRUE)
myList[c(1, 2, 4)] # Creates a new list with only items #1, #2, and #4
```

{: .label .label-green }
Output
```
[[1]]
[1] 2

[[2]]
[1] 2

[[3]]
[1] "a string"
```
</div>

## Modifying Values in a List

The process to modify values in a list is identical to how matrices and vectors have their values modified. Index the item you want to change and assign it to a new value.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myList = list(2, 2, 3, "a string", TRUE)
myList[[3]] <- "another string"
myList
```

{: .label .label-green }
Output
```
[[1]]
[1] 2

[[2]]
[1] 2

[[3]]
[1] "another string"

[[4]]
[1] "a string"

[[5]]
[1] TRUE
```
</div>

## Adding Elements to a List

There are several ways to add elements to a list. If we simply want to add a new element at the end of a list, we can use the `append()` function.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myList = list(2, 3)
myList <- append(myList, 4)
myList
```

{: .label .label-green }
Output
```
[[1]]
[1] 2

[[2]]
[1] 3

[[3]]
[1] 4
```
</div>

You can also use the append function to insert a new element at a specific position by setting `after` to your desired index.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myList = list(2, 3)
myList <- append(myList, 4, after=1)
myList
```

{: .label .label-green }
Output
```
[[1]]
[1] 2

[[2]]
[1] 4

[[3]]
[1] 3
```
</div>

Finally, you can also add a new element to a list by assigning a value to its named index directly.

<div class="code-example" markdown="1">

{: .label }
Input
```r
myList = list(a = "apple", b = "banana")
myList["c"] <- "cookie"
myList
```

{: .label .label-green }
Output
```
$a
[1] "apple"

$b
[1] "banana"

$c
[1] "cookie"
```
</div>

## Additional Resources (optional)

- If you need to store data of different data types in a container, you can use a list.
