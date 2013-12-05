# Quick Sort
# 1. Select a random element (called pivot)
# 2. Put all elements that are less than or equal to that element
# 3. Put all elements which are greater ot its right
# 4. Recusively call this method on the sublists.

require 'pry'
require 'benchmark'
def quick_sort(array)
  return array if array.size <= 1
  pivot = array.pop
  left, right = array.partition { |a| a < pivot }
  quick_sort(left) + [pivot] + quick_sort(right)
end

array = [12,3,532,12,6,23,90,34]
p Benchmark.measure { 1000.times {quick_sort(array)}}
p Benchmark.measure { 1000.times {array.sort}}