require 'pry'

class TreeNode
  attr_accessor :value, :children
  def initialize(value)
    @value = value
    @children = []
  end

  def leaf?
    @children.empty?
  end
end

def add_new_node(node)
  new_node = TreeNode.new(rand(0..10))
  if rand < 0.4
    add_new_node(new_node)
  end
  node.children.push new_node

end

root = TreeNode.new(rand(0..10))
1.upto(rand(3..10)) do
  add_new_node(root)
end

puts root

def breadth_first_search_for_leaf(node)
  queue = []
  queue.push(node)

  while !queue.empty
    next_node = queue.pop
    puts "Now handling node: #{next_node.value}"
    if next_node.leaf?
      return next_node
    end
    next_node.children.each do |child|
      queue.push(child)
    end
  end
end

def depth_first_recursive(node)
  puts "Now handling node: #{node.value}"
  if node.leaf?
    return node
  else
    node.children.each do |child|
      return depth_first_recursive(child)
    end
  end
end

def depth_first_search_for_leaf(node)
  stack = []
  stack.push(node)

  while !stack.empty
    next_node = stack.pop
    puts "Now handling node: #{next_node.value}"
    if next_node.leaf?
      return next_node
    end
    next_node.children.each do |child|
      stack.push(child)
    end
  end
end
binding.pry