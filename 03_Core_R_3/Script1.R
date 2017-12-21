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
# 4.b. Working with environments (Praca ze środowiskami)
# 4.c. The global environment (Środowisko globalne)
# 4.d. Environments and functions (Środowiska i funkcje)
# 4.d.1. Working with the call stack (Stos wywołań)
# 4.d.2. Evaluating functions in different environments
# 4.d.3. Adding objects to an environment
# 4.e. Exceptions (Wyjątki)
# 4.e.1. Signaling errors (Sygnałowanie błędów)
# 4.e.2. Catching errors (Wychwytywanie błędów)


