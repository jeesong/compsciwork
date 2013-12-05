require 'benchmark'
require 'pry'

def sort(array)
  counter = 1
  sorted_array = []
  sorted_array[0] = array[0]
  length = array.length

  while counter < length do
    if array[counter] > sorted_array.last
      sorted_array.push(array[counter])
    else
      z = sorted_array.bsearch {|x| x >= array[counter]}
      placeholder = sorted_array.index(z)
      sorted_array.insert(placeholder, array[counter])
    end
    counter += 1
  end
  sorted_array
end

def sort2(array)
  sorted_array = array
  length = array.length
  counter = 0

  while counter < length
    for i in (0..length - 2)
      if sorted_array[i].to_i > sorted_array[i+1].to_i
        sorted_array[i],sorted_array[i+1] = sorted_array[i+1],sorted_array[i]
      end
    end
    counter += 1
  end
  sorted_array
end

start = Time.now
sort([2,5,1,3,99,77,33,44])
fin = Time.now
p "#{fin - start}"
# [2,5,1,3,99,77,33,44].sort
# fin2 = Time.now
# p "#{fin2 - fin}"
binding.pry
# puts Benchmark.measure {*method*}