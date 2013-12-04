require 'pry'
class WordComplete
  attr_accessor :children, :value, :complete

  def initialize(value)
    @value = value
    @children = []
    @complete = false
  end

  def learn(word)
    parent = self
    i = 1
    length = word.length

    while i <= length
      if parent.children.any? { |node| node.value == word[0,i] }
        parent = parent.children.find { |node| node.value == word[0,i] }
      else
        newNode = WordComplete.new(word[0,i])
        parent.children << newNode
        parent = newNode
      end
      i += 1
    end
    parent.complete = true
    # ender = (node.value.length + 1)
    # stem = word[0,ender]

    # if stem == word
    #   # ends
    # else
    #   # look for child where value == stem or if this does not exist
    #   unless #there exists a child where value == steam, create
    #     @children.push WordComplete.new(stem)
    #   # lastly call the learn function
    # end
    # end
    # # stem = input[0..value.length]
  end

  def completionsFor(word)
    @word = word
  end
end

root = WordComplete.new("")
root.learn("apple")
root.learn("app")
root.learn("application")
binding.pry


    # split_word = word.split(//)
    # for i in 0..split_word.length
    #   new_word = split_word[0,i].join
    #   @children.push new_word
    # end