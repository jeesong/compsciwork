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

# isPrime = (x) ->
#   if x is 2
#     return true
#   if x % 2 is 0
#     return false
#   else
#     i = 3
#     while i <= Math.round(Math.sqrt(x))
#       if x % i is 0
#         return false
#       i += 2
#     return true

# primecount = (max) ->
#   number = 0
#   count = 1
#   i = 2
#   while count <= max
#     if isPrime(i) is true
#       number = i
#       i++
#       count++
#     else
#       i++
#   console.log("The " + max + "st prime number is " + number)

# primecount(10001)
# console.log("2 " + isPrime(2))
# console.log("3 " + isPrime(3))
# console.log("4 " + isPrime(4))
# console.log("5 " + isPrime(5))
# console.log("6 " + isPrime(6))
# console.log("7 " + isPrime(7))
# console.log("8 " + isPrime(8))
# console.log("9 " + isPrime(9))
# console.log("10 " + isPrime(10))
# console.log("11 " + isPrime(11))
# console.log("12 " + isPrime(12))
# console.log("27 " + isPrime(27))
# console.log("31 " + isPrime(31))

## Problem 8
digits = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450".split("").map(Number)
max = 0
i = 0

while i < digits.length - 4
  fiveconsecutive = digits[i]*digits[i+1]*digits[i+2]*digits[i+3]*digits[i+4]
  max = fiveconsecutive if fiveconsecutive > max
  i++

console.log(max)
