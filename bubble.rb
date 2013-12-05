# Bubble Sort
# 1. Look at the first two items in the list
# 2. If the irst item is greater, then sawp the items.
# 3. Now compare the second and third items in the same way.
# 4. Continue doing htis until you get ot the end of the list -1.
# 5. Repeat the whole process n times (n is length of your array).

def bubble_sort(array)
  array.each_index do |i|
    (array.length - i - 1).times do |job|
      # take the length of the array, we sutract 1 from it
      # so that we don't compare last element to nil
      # eliminates the number of elements we need to compare on array
      if array[job] > array[job+1]
        array[job],array[job+1] = array[job+1],array[job]
      end # ends if statement
    end # ends times loop
  end # ends each loop
  array
end # ends method

array = [2,98,1,34,129,2,90]