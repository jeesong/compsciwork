require 'pry'

class LinkedListNode
  attr_accessor :value, :next

  def initialize(value)
    @value = value
  end

  def [](n)
    node = self
    n.times { node = node.next }
    ## another way of doing it
    # while n > 0
    #   node = node.next
    #   n -= 1
    # end
    node
  end

  def insert(node)
    oldNext = self.next
    self.next = node
    node.next = oldNext
  end

  def deleteNext(node)
    self.next = self.next.next
  end

  def length
    node = self
    length = 1
    while node.next
      node = node.next
      length += 1
    end
    length
  end

  def last
    # standard way
    node = self
    while node.next
      node = node.next
    end
    node
    # # unconventional way
    # index = self.length - 1
    # self[index]
  end

  # if using strings, use length
  def max
    # return maximum node
    max = self
    node = self
    # if it was for integer, just take off the length
    # in code below
    while node.next
      node = node.next
      if node.value.length > max.value.length
        max = node
      end
    end
    max
  end

  def min
    # return minimum node
    min = self
    node = self

    while node.next
      node = node.next
      if node.value.length < min.value.length
        min = node
      end
    end
    min
  end

  def sum
    total = self.value.length
    node = self

    while node.next
      node = node.next
      total += node.value.length
    end

    total
  end

  def mean
    # return average
    self.sum / self.length
  end
end

list = LinkedListNode.new('First')
list.next = LinkedListNode.new('Second')
list.next.next = LinkedListNode.new('Third')

## for append
list[1].insert(LinkedListNode.new('Second Point Five'))

## testing the [] function
# puts list[0].value
# puts list[2].value

binding.pry

