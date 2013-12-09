## Problem 1
# better_total = 0
# i = 0

# while i < 1000
#   better_total += i if i % 5 is 0 or i % 3 is 0
#   i++

# console.log better_total

## Problem 2
fibonacci = (n) ->
  if n is 0 or n is 1
    n
  else
    fibonacci(n-1) + fibonacci(n-2)

i = 0
total = 0
while fibonacci(i) <= 4000000
  if fibonacci(i) % 2 is 0
    total += fibonacci(i)
  i++

console.log(total);
