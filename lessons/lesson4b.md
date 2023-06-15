---
layout: default
title: Lesson 4b - Lists
nav_order: 2
parent: Lesson 4 - Collections
grand_parent: Lessons
---

{: .no_toc}  
# Lesson 4b - Lists

Lists are collections that can hold values of different data types.

<details markdown="block">
  <summary>
    Table of Contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

## Lesson Objectives
- A learning objective.
- Second learning objective.
- Another learning objective.

<!-- ## Lesson Video
The following video demonstrates each of the steps outlined below in text.

<iframe height="416" width="100%" allowfullscreen frameborder=0 src="https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false"></iframe>
[View original here.](https://echo360.ca/media/a65689c0-c35c-4f33-9c12-f0ac97883f54/public?autoplay=false&automute=false) -->

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

# if we were to access the first index like normal, we would get a list with 1 element
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



## Another sub-topic

Include text here.

## Another sub-topic

Include text here.

## Key Points / Summary

- Remind the student about what they just learned.
- You can also note down any key information to keep in mind.

## Additional Resources (optional)

- Here, you can list some additional resources the student can access to learn more about this lesson.
