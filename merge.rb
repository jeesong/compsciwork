require 'pry'
# Merge Sort
# 1. Divide the unordered list in half recursively until we have sublists containing one element each
# 2. repeatedly merge the sublists back together again

def merge_sort(array)
  return array if array.size <= 1
  midpoint = array.length/2 -1
  length = array.length
  left, right = array[0..midpoint], array[midpoint+1, length]
  merge(merge_sort(left), merge_sort(right))
  # binding.pry
  # if left.length == 1 && right.length == 1
  #   merge(left, right)
  # elsif left.length == 1
  #   merge_sort(right)
  # else
  #   merge_sort(left)
  # end
  # merge_sort(left) + merge_sort(right)
  # [left,right]
  # split array in the middle
  # split it again (call itself on halves)
  # merge elements back together
end

def merge(left, right)
  # [left, right]
  # create a new array
  new_array = []
  while !left.empty? && !right.empty?
    if left[0] >= right[0]
      new_array << right.shift
    else
      new_array << left.shift
    end
  end

  # if left.empty?
  #   new_array << right.shift
  # elsif right.empty?
  #   new_array << left.shift
  # end

  new_array + left + right
  # compare zero index of left to zero index of right
  # shove into new array in order
  # return new array
end
binding.pry
# array = [12,1,34,1,2343,40,353,0]
# p merge_sort(array)