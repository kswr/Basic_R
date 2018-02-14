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

# 2.d. Control structures (Kontrola przepływu)

# 2.d.1. Conditional statements (Wyrażenia warunkowe)

# if

typeof(`if`)

if (FALSE) "this will not be printed"
if (FALSE) "this will not be printed" else "this will be printed"
x <= 10
if (is(x, "numeric")) x/2 else print("x is not numeric")

# if is not a vector operation

x <- 10
y <- c(8, 10, 12, 3, 17)
if (x < y) x else y

# to get a vector operation, use ifelse

a <- c("a", "a", "a", "a", "a")
b <- c("b", "b", "b", "b", "b")
ifelse(c(TRUE, FALSE, TRUE, FALSE, TRUE), a, b)

# switch

x <- 'a'

switch (x,
  'a' = "alligator",
  'b' = "bear",
  'c' = "camel",
  "moose"
)

# switch in function

animal.switch <- function(x){
  switch (x,
    'a' = "alligator",
    'b' = "bear",
    'c' = "camel",
    "moose"
  )
}

animal.switch(x)
animal.switch('b')
animal.switch(T)
animal.switch(F)
animal.switch(3)

# 2.d.2. Loops (pętle)

# repeat

i <- 5
repeat {if (i > 25) break else {print(i); i <- i + 5}}

# while

i <- 5
while (i <= 25) {print(i); i <- i + 5}

# for

for (i in seq(from=5, to=25, by=5)) print(i)

# 2.e. Accessing data structures (Struktury danych)
# 2.e.1. Data structure operators (Operatory struktur danych)

# x[i]
# x[[i]]
# x$n
# x@n

# 2.e.2 Indexing by Integer vector (Indeksowanie wektorem numerycznym)

v <- 100:119
v[5]
v[1:5]
v[c(1, 6, 11, 16)]
v[[3]] # works the same in this case
v[-15:-1]

# for listst

l <- list(a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10)
l[1:3]
typeof(l[1])
typeof(l[[1]])

# multidimensional data structure

m <- matrix(data=c(101:112), nrow=3, ncol=4)
m
m[3] # number of the element
m[8]
m[3,4] # dimensions
m[1:2,1:2]
m[1:2, ] # to get all from given dimension
m[3:4]
m[,3:4]

# class of returned object due to it's dimensions

a <- array(data=c(101:124), dim=c(2, 3, 4))
a
class(a[1, 1, ])
class(a[1, , ])
class(a[1:2, 1:2, 1:2])
class(a[1, 1, 1, drop=FALSE])

# replacing elements

m
m[1] <- 1000
m

m[1:2, 1:2] <- matrix(c(1001:1004), nrow=2, ncol=2)
m

v <- 1:12
v[15] <- 15
v

# 2.e.3 Indexing by Lobical vector (Indeksowanie wektorem logicznym)

d <- rep(c(TRUE, FALSE), 10)
d
v
v[rep(c(TRUE, FALSE), 10)] # rep applied to v
v[d]

# vector can be shorter

v[c(TRUE, FALSE, FALSE)]

# same notation for listst

l[(l > 7)]

# 2.e.4 Indexing by name (Indeksowanie nazwą)

l <- list(a=1, b=2, c=3, d=4, e=5, f=6, g=7, h=8, i=9, j=10)
l$j
l[c("a", "b", "c")]
l['a']

dairy <- list(milk="1 gallon", butter="1 pound", eggs=12)
dairy$milk
typeof(dairy$milk)
dairy['milk']
typeof(dairy['milk'])
dairy[["milk"]]
typeof(dairy[["milk"]])
dairy[["mil"]]
dairy[["mil",exact=FALSE]]

# list of lists

fruit <- list(apples=6, oranges=3, bananas=10)
shopping.list <- list (dairy=dairy, fruit=fruit)
shopping.list

shopping.list[[c("dairy", "milk")]]
shopping.list[[c(1,2)]]

# 2.f. R Code style standards (Standard stylistyczny kodu)

# Notebook "R Code style standards"

# 3. Objects (Obiekty)

# 3.a. Primitive object types (Obiekty prymitywne)

# Notebook "Primitive object types"

# 3.b. Vectors (Wektory)

v <- c(.295, .300, .250, .287, .215)
v
typeof(v)
class(v)

# c function coerces all its arguments into a single type

v <- c(.295, .300, .250, .287, "zilch")
v
typeof(v)
class(v)

# to recursively assemble vectors from other structures use recursive = T

v <- c(.295, .300, .250, .287, list(.102, .200, .303), recursive=TRUE)
v
typeof(v)
class(v)

# list as an argument returns list (not recursively)

v <- c(.295, .300, .250, .287, list(.102, .200, .303), recursive=TRUE)
v
typeof(v)
class(v)
v <- c(.295, .300, .250, .287, list(1, 2, 3))
typeof(v)
class(v)
v

# sequences

1:10

# seq() function
seq(from=5, to=25, by=5)

# manipulate the length

w <- 1:10
w

length(w) <- 5
w

length(w) <- 10
w

# 3.c. Lists (Listy)

# list elements can be accessed by position or name (if each object has a name we call it pairlist)

l <- list(1, 2, 3, 4, 5)
l[1]
l[[1]]

parcel <- list(destination="New York", dimensions=c(2, 6, 9), price=12.95)
parcel$price

# 3.d. Other objects (Inne obiekty)

# 3.d.1. Matrices (Matryce)

# extension of vector to two dimensions

m <- matrix(
  data = 1:12,
  nrow = 4,
  ncol = 3,
  dimnames = list(c("r1", "r2", "r3", "r4"),
                  c("c1", "c2", "c3"))
)

m
m['r1','c1']
m['r2','c2']
m['c2','r2'] # error
m[5,5] # same error
m[2,2]

n <- matrix(1:16, 4, 4)
n
n[3,3]

is.matrix(n)

# as.matrix()

x <- 1
x <- as.matrix(x)
class(x)
typeof(x)

x <- 1:16
y <- 17:32
z <- 33:48
df <- data.frame(x,y,z)
class(df)
typeof(df)
as.matrix(df) -> df.as.matrix
df.as.matrix
class(df.as.matrix)
typeof(df.as.matrix)

# 3.d.2. Arrays (Tablice)

# extension of vector to more than two dimensions

a <- array(data=1:24, dim=c(3, 4, 2))
a
class(a)
typeof(a)

# 3.d.3. Factors (Faktory)

# ordered collection of categorical items

eye.colors <- c("brown", "blue", "blue", "green","brown", "brown", "brown")
eye.colors

eye.colors <- factor(c("brown", "blue", "blue", "green", "brown", "brown", "brown"))
eye.colors
levels(eye.colors)

# ordering levels

survey.results <- factor(
  c(
    "Disagree",
    "Neutral",
    "Strongly Disagree",
    "Neutral",
    "Agree",
    "Strongly Agree",
    "Disagree",
    "Strongly Agree",
    "Neutral",
    "Strongly Disagree",
    "Neutral",
    "Agree"
  ),
  levels = c(
    "Strongly Disagree",
    "Disagree",
    "Neutral",
    "Agree",
    "Strongly Agree"
  ),
  ordered = TRUE
)

survey.results

# factors interally use integers

eye.colors
class(eye.colors)
eye.colors.integer.vector <- unclass(eye.colors)
eye.colors.integer.vector
class(eye.colors.integer.vector)

# set it back
class(eye.colors.integer.vector) <- "factor"
eye.colors.integer.vector
class(eye.colors.integer.vector)

# 3.d.4. Data frames (Ramki danych)

# natural way to represent datasets (business/academia)
# columns = variables

top.bacon.searching.cities <- data.frame(
  city = c(
    "Seattle",
    "Washington",
    "Chicago",
    "New York",
    "Portland",
    "St Louis",
    "Denver",
    "Boston",
    "Minneapolis",
    "Austin",
    "Philadelphia",
    "San Francisco",
    "Atlanta",
    "Los Angeles",
    "Richardson"
  ),
  rank = c(100, 96, 94, 93, 93, 92, 90, 90, 89, 87,
           85, 84, 82, 80, 80)
)

top.bacon.searching.cities

typeof(top.bacon.searching.cities)
class(top.bacon.searching.cities)

# which means we can reffer to elements using methods for lists and data.frames

top.bacon.searching.cities$rank

# 3.d.5. Formulas (Formuły)

# lets user describe relationships between variables (for plotting, modeling and so on)

sample.formula <- as.formula(y~x1+x2+x3)
class(sample.formula)
typeof(sample.formula)

# 3.d.6. Time series (szeregi czasowe)

# ts(data = NA, start = 1, end = numeric(0), frequency = 1, deltat = 1, ts.eps = getOption("ts.eps"), class = , names = )

ts(1:8, start=c(2008, 2), frequency=4)

library(nutshell)
data(turkey.price.ts)
turkey.price.ts

start(turkey.price.ts)
end(turkey.price.ts)
frequency(turkey.price.ts)
deltat(turkey.price.ts)

# 3.d.7. Shingles

# pomijamy

# 3.d.8. Dates and times (Data i czas)

date <- as.Date("2/13/2009","%m/%d/%Y")
date

today <- Sys.Date()
today

today - date

difftime(today, date, units = 'weeks')

# 3.d.9. Connections (Połączenia)
 # consumption.connection <- gzfile(description="consumption.RData",open="r")
# load(consumption.connection)
# close(consumption.connection)

# 3.e. Atributes (Atrybuty)

v <- c(.295, .300, .250, .287, .215)

class(turkey.price.ts)

comment(turkey.price.ts)
turkey.price.ts -> new.ts
comment(new.ts) <- "Turkey price time series"
comment(new.ts)

dim(parcel)
dimnames(parcel)
names(parcel)
row.names(parcel)
tsp(turkey.price.ts)
levels(eye.colors)

m <- matrix(
  data = 1:12,
  nrow = 4,
  ncol = 3,
  dimnames = list(c("r1", "r2", "r3", "r4"),
                  c("c1", "c2", "c3"))
)

attributes(m)

colnames(m)
rownames(m)

class(m)
typeof(m)

dim(m) <- NULL
m
class(m)
typeof(m)

# new example

a <- array(1:12,dim=c(3,4))
a

b <- 1:12
b

a[2,2]
b[2,2]
a == b
all.equal(a,b)
identical(a,b)
# dim(b) <- c(3,4)
dim(b) <- dim(a)
b[2,2]
all.equal(a,b)
identical(a,b)

# 3.e.1 Class (Klasa)

# polymorphism

v <- as.integer(c(1, 1, 1, 2, 1, 2, 2, 3, 1))
levels(v) <- c("what", "who", "why")
class(v)
attributes(v) # incipit class
class(v) <- "factor"
v
class(v)
attributes(v)

# 4. Symbols and evironments (Symbole i środowiska)
# 4.a. Symbols (Symbole)

# assigning symbol x to a vector object of length 1 with constant 
# numeric value 1 of type double in the global environment

x <- 1

# immediate evaluation

x <- 1
y <- 2
z <- 3
v <- c(x, y, z)
v
x <- 10
v

# evaluation on call using eval(quote())

x <- 1
y <- 2
z <- 3
v <- quote(c(x, y, z))
eval(v)
x <- 5
eval(v)

# promise object (kind of proxy)
# do not confuse with lazy evaluation

x <- 1
y <- 2
z <- 3
delayedAssign("v", c(x, y, z))
x <- 5
x <- 6
v

# 4.b. Working with environments (Praca ze środowiskami)

# environments are objects

assign("x1",1)
get("x")
exists("x")
objects()
identical(ls(),objects())
remove(list=ls())
identical(rm(),remove())
search()
searchpaths()
# attach()
# detach
emptyenv()
parent.env(globalenv())
globalenv()
environment() # with no parameter equals to globalenv()
new.env()

# 4.c. The global environment (Środowisko globalne)

x <- .GlobalEnv
while (environmentName(x) != environmentName(emptyenv())) {
  print(environmentName(parent.env(x))); x <- parent.env(x)}

# 4.d. Environments and functions (Środowiska i funkcje)

env.demo <- function(a, b, c, d) {print(objects())}
env.demo(1, "truck", c(1,2,3,4,5), pi)

# if function was created in package, parent environment is not the same as for function created in 
# global environment, and calling environment and will not be the same as environment
# in which function has been created


# 4.d.1. Working with the call stack (Stos wywołań)

# notebook "Working with the call stack"

# 4.d.2. Evaluating functions in different environments

timethis <- function(...) {
  start.time <- Sys.time();
  eval(..., sys.frame(sys.parent(sys.parent())));
  end.time <- Sys.time();
  print(end.time - start.time);
}

create.vector.of.ones <- function(n) {
   return.vector <- NA;
   for (i in 1:n) {
      return.vector[i] <- 1;
   }
   return.vector;
}

# note that returned.vector is not defined
returned.vector
# measure time to run function above with n=10000
timethis(returned.vector <- create.vector.of.ones(10000))
# notice that the function took about 1.5 seconds to run
# also notice that returned.vector is now defined
length(returned.vector)

# treat list or or df as environment

example.list <- list(a=1, b=2, c=3)
a+b+c
with(example.list, a+b+c)
within(example.list, d<-a+b+c)

# 4.e. Exceptions (Wyjątki)

# 4.e.1. Signaling errors (Sygnałowanie błędów)

doWork <- function(filename) {
     if(file.exists(filename)) {
         read.delim(filename)
       } else {
           stop("Could not open the file: ", filename)
         }
   }
doWork("file that doesn't exist")


doNoWork <- function(filename) {
     if(file.exists(filename)) {
         "File already exists"
       } else {
           warning("File does not exist: ", filename)
         }
   }
doNoWork("another file that doesn't exist")

doNothing <- function(x) { 
     message("This function does nothing.") 
   }
doNothing("another input value")

# 4.e.2. Catching errors (Wychwytywanie błędów)

# try()

res <- try({x <- 1}, silent=F)
res
res <- try({open("file that doesn't exist")}, silent=TRUE)
res # object
res <- try({open("file that doesn't exist")}, silent=FALSE)
res
 
# tryCatch()
# matches condition class to the arguments of the handler

tryCatch(expression, handler1, handler2, ..., finally=finalexpr)

# 5. Functions 

# 5.a. The Function keyword

# function(arguments) body

f <- function(x,y) x + y
f(1,2)

f <- function(x,y) {x + y}
f(1,2)

# 5.b. Arguments

# optional arguments

g <- function(x, y = 10) {x + y}
g(1)
g(5,6)

# elipsis; variable-length argument list

v <- c(sqrt(1:100))
f <- function(x,...) {print(x); summary(...)}
f("Here is the summary for v.", v, digits=2)
summary(v, digits = 2)

addemup <- function(x,...) {
    args <- list(...)
    for (a in args) x <- x + a
    x
 }
addemup(1, 1)
addemup(1, 2, 3, 4, 5)

# 5.c. Return values

f <- function(x) {return(x^2 + 3)}
f(3)

f <- function(x) {x^2 + 3}
f(3)

# 5.d. Functions as arguments

a <- 1:7
sapply(a, sqrt)
# sqrt(1:7)

# 5.d.1. Anonymous functions

apply.to.three <- function(f) {f(3)}
apply.to.three(function(x) {x * 7})

a <- c(1, 2, 3, 4, 5)
# lapply returns list, sapply arrays
sapply(a, function(x) {x + 1})

v <- 1:20 
w <- NULL 
for (i in 1:length(v)) {w[i] <- v[i]^2} 
w

v <- 1:20 
w <- sapply(v, function(i) {i^2}) 
w

sapply(1:20, function(i) {i^2}) 

# lambda on given argument
(function(x) {x+1})(1)

# 5.d.2. Properties of functions

args(sin)
args(`?`)
args(args)
args(lm)

f <- function(x, y=1, z=2) {x + y + z}
f.formals <- formals(f)
# return pairlist
f.formals

f.formals$y <- 3
formals(f) <- f.formals
args(f)

f <- function(x, y=1, z=2) {x + y + z}
formals(f) <- alist(x=, y=100, z=200)
f

body(f)
f

body(f) <- expression({x * y * z})
f

# 5.e. Argument Order and Named Arguments

addTheLog <- function(first, second) {first + log(second)}

# recomended
addTheLog(second=exp(4), first=1)

addTheLog(s=exp(4), f=1)

addTheLog(1, exp(4))

f <- function(arg1=10, arg2=20) {
    print(paste("arg1:", arg1))
    print(paste("arg2:", arg2))
}

f(arg=1)
f(arg=1, arg2=2)
f(arg=1, arg1=2)


# 5.f. Side effects

# things functions do that aren't returning values
# change variables, plot graphics, load or save files, access the network

# 5.f.1. Changes to Other Environments

rm(x)

x
doesnt.assign.x <- function(i) {x <- i}
doesnt.assign.x(4)
x

assigns.x <- function(i) {x <<- i}
assigns.x(4)
x

# 5.f.2. Input/Output
# 5.f.3. Graphics

# 6. Object-Oriented Programming

# 6.a. Overview of Object-Oriented Programming in R
# 6.a.1 Key ideas
# 6.a.2 Implementation Example
# 6.b OOP in R: S4 Classes
# 6.b.1 Defining Classes
# 6.b.2 New Objects
# 6.b.3 Accessing Slots
# 6.b.4 Working with Objects
# 6.b.5 Creating Coercion Methods
# 6.b.6 Methods
# 6.b.7 Managing Methods
# 6.b.8 Basic Classes
# 6.b.9 More help
# 6.c. OOP in R: Old-School S3 Classes
# 6.c.1 S3 Classes
# 6.c.2 S3 Methods
# 6.c.4 Using S3 Classes in S4 Classes
# 6.c.5 Finding Hidden S3 Methods
