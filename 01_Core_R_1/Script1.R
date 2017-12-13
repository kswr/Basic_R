# expressions

x <- 1
if (1 >2) "yes" else "no"

1+2;3+4

# objects

c(1,2,3,4) -> y

z <- c("This is an object")

# functions

animals <- c("cow","chicken","pig","tuba")

animals[4] <- "duck"

`[<-`(animals,4,"duck") -> animals

# assignments

x <- 1

y <- x

x <- 2

y

# objects

x <-1

x

x(2)

x <- function(i) i^2

x(2)

# special values

## NA

v <- c(1,2,3)

length(v) <- 4

v

## NULL

## Inf -Inf

2^1024
-2^1024

## NaN

Inf - Inf

# coercion

1 & 1

T & T

# syntax

1.1

2^1023

0x1

0+1i

# operators

1 + 10
1- 10
5*5
41 %% 21

20 ^ 2

21 %/% 2

'%myop%' <- function(a,b) {2*a + 2*b}

f <- function() {x <- 1; y <-2; x+y}
f()

# conditional
