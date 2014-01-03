## Problem 1
# better_total = 0
# i = 0

# while i < 1000
#   better_total += i if i % 5 is 0 or i % 3 is 0
#   i++

# console.log better_total

## Problem 2
# fibonacci = (n) ->
#   if n is 0 or n is 1
#     n
#   else
#     fibonacci(n-1) + fibonacci(n-2)

# i = 0
# total = 0
# while fibonacci(i) <= 4000000
#   if fibonacci(i) % 2 is 0
#     total += fibonacci(i)
#   i++

# console.log(total);

## Problem 4
# palindrome = (x) ->
#   string_array = []
#   i = 0
#   x = x.toString()
#   string_array = x.split("")

#   while i < string_array.length
#     if string_array[i] is string_array[string_array.length - 1]
#       string_array.pop()
#     else
#       return false
#     i++
#   true

# x = 999
# # y = 999

# while x > 0
#   y = 999

#   while y > 0
#     if palindrome(x * y) is true
#       console.log x + " x " + y + " = " + x * y
#       break
#     y--
#   x--

## Problem 5

# smallest_multiple = (x) ->
#   multiple = 20
#   while multiple > 0
#     if x % multiple is 0
#       multiple--
#     else
#       return false
#       break
#   if multiple is 0
#     return true

# x = 1
# while x < 999999999
#   if smallest_multiple(x) is true
#     console.log x
#     break
#   else
#     x++


## Problem 6

# sum_square = 0
# square_sum = 0
# i = 1

# while i <= 100
#   sum_square += Math.pow(i,2)
#   square_sum += i
#   i++

# console.log parseInt(square_sum*square_sum - sum_square)

## Problem 7