# Hell Triangle Challenge

#### Given a triangle of numbers, find the maximum total from top to bottom.

Given a triangle of numbers, find the maximum total from top to bottom
Example:
```
   6
  3 5
 9 7 1
4 6 8 4
```
In this triangle the maximum total is 6 + 5 + 7 + 8 = 26

An element can only be summed with one of the two nearest elements in the next row.  
So the element 3 in row 2 can be summed with 9 and 7, but not with 1.

**Why Ruby?**

I used Ruby because I'm more familiar and because it's the language I like to work with.

### Dependencies
* ruby (2.3.1 or higher)
* bundler
* rspec

### How to run this solution?
Clone this repository
```
$ git clone https://github.com/rodolphofr/helltriangle-challenge.git
```

Run bundler to get dependencies
```
$ bundle install
```

Run the solution
```
$ ruby helltriangle_execute.rb
```

Running test
```
$ rspec
```
