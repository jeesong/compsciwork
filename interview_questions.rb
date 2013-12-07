require 'pry'

# Fibonacci
def fibonacci(n)
  unless n == 1 || n ==0
    fibonacci(n-1) + fibonacci(n-2)
  else
    return n
  end
end

# Prime Numbers
def prime(array)
  # prime_array = []
  array.each do |x|
    stopper = x-1
    if x < 2
      array.delete(x)
    end
    for d in 2..stopper
      # binding.pry
      if (x % d) == 0
        binding.pry
        array.delete(x)
      end
    end
  end
  # prime_array
end


def is_prime n
  for d in 2..(n - 1)
   if (n % d) == 0
    return false
   end
  end

  true
end

## Arry to Hash
# x = [ ['a',1], ['b',2], ['c','3' ]]
# x = Hash[x.map {|letter,number| [letter,number]}]

# myHash = Hash.new()
# x.each do |x|
#   myHash[x[0]] = x[1]
# end
# p myHash

def is_palindrome(string)
  length = string.downcase.length
  counter = []
  for x in 0..length-1
    if string[x] == string[length-x-1]
      counter << 1
    end
  end

  if counter.length == length
    p "IS PALINDROME!!!"
  else
    p "Not palindrome :("
  end
end

# def palindrome?(string)
#   array = string.split(//)
#   array.each do |a|
#     if a == array[-1]
#       array.pop
#     else
#       return false
#     end
#     return true
# end

## Input Pattern
pattern = "AAASSSDDDDRDDSASSDDDSSSAD"
# pattern = "AAASSS"
def input_pattern(pattern)
  new_pattern = []
  pattern_array = pattern.split(//)
  new_pattern << pattern_array.shift
  while !pattern_array.empty?
    if pattern_array.first == new_pattern.last
      pattern_array.shift
      if new_pattern[-2].is_a? Integer
        new_pattern[-2] += 1
      else
        new_pattern.insert(-2, 2)
      end
    else
      new_pattern << pattern_array.shift
    end
  end
  new_pattern.join
end
## Printing 12x12

x = (1..12)
y = (1..12)

# print '     '
# x.each {|i| print "%-3d  " % i}
# print "\n     "
# x.each {|i| print '---- '}
# print "\n"

# y.each do |j|
#     print "%-3d| " % j
#     x.each {|i| print "%-3d  " % (i*j)}
#     print "\n"
# end
binding.pry