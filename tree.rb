require 'pry'

class TreeNode
  attr_accessor :value, :children

  def initialize(value)
    @value = value
    @children = []
  end

  def addChild(node)
    children.push node
  end

  def leaf?
    children.empty?
  end

  def count
    if self.leaf?
      1
    else
      # use reduce (aka inject)
      @children.reduce(1) do |sum, child|
        sum += child.count
        sum
      end
      ## Same as
      # sum = 0
      # @children.each do |child|
      #   sum += child.count
      # end
      # sum
    end
  end

  def sum
    if self.leaf?
      self.value
    else
      @children.reduce(self.value) do |sum, child|
        sum += child.sum
        sum
      end
    end
  end

  def max
    maxNode = self

    @children.each do |subtree|
      if subtree.max.value > maxNode.value
        maxNode = subtree.max
      end
    end
    maxNode
  end

end

tree = TreeNode.new(0)
tree.addChild TreeNode.new(1)
tree.addChild TreeNode.new(2)

node1 = tree.children[0]
node2 = tree.children[1]

node1.addChild TreeNode.new(3)
node1.addChild TreeNode.new(4)

node2.addChild TreeNode.new(5)
node2.addChild TreeNode.new(6)

binding.pry