require 'pry'

class AutoCompleteNode

  attr_accessor :value, :children, :is_complete_word

  def initialize(value)
    @value = value
    @children = []
    @is_complete_word = false
  end

  def learn(input)
    length = input.length
    i = 1
    parent = self
    while i <= length
      if parent.children.any? { |node| node.value == input[0..i] }
        parent = children.find { |node| node.value == input[0..i] }
      else
        newNode = AutoCompleteNode.new(input[0,i])
        parent.children << newNode
        parent = newNode
      end
      i += 1
    end
    parent.is_complete_word = true
  end

  def completionsFor(input)
    matches = []
    # if completionsFor(input)
    @children.each do |subtree|
      if subtree.value.start_with?(input) && subtree.is_complete_word
        matches << subtree.value
      end
      matches += subtree.completionsFor(input)
    end
    matches
  end
end

root = AutoCompleteNode.new('')
root.learn 'apple'
root.learn 'ape'
# root.learn 'app'
# root.learn 'appear'
# root.learn 'approve'
# root.learn 'appease'
# root.learn 'boo'
# root.learn 'book'
# root.learn 'books'
# root.learn 'bored'
# root.learn 'candle'

binding.pry
# while true
#   puts 'Input a word'
#   input = gets.chomp()
#   # root.learn(input)
#   root.completionsFor(input)
#   # puts root.inspect
# # binding.pry
# end