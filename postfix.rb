require 'pry'

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(v)
    @val = v
    @left = nil
    @right = nil
  end

  def leaf?
    # A node is a leaf if it has no children.
    @left.nil? && @right.nil?
  end
end

def numeric?(str)
  true if Float(str) rescue false
end

def parse_postfix_expression(exp)
  # Split our arithmetic expression at the whitespaces.
  tokens = exp.split(/\s/)

  # Since we are parsing postfix, the root node will always be the last token.
  return get_next_node(tokens)
end

def get_next_node(tokens)
  unless tokens.empty?
  # The next token will be the root of the tree we are building.

    root = TreeNode.new(tokens.pop)
    if numeric?(tokens.last)
      root.right = TreeNode.new(tokens.pop)
      if numeric?(tokens.last)
        root.left = TreeNode.new(tokens.pop)
        root
      else ## RECURSION TO BUILD TREE, how to pass the node though?
        left_sub_tree = TreeNode.new(tokens.pop)
        root.left = left_sub_tree
        root
      end
    else ## RECURSION TO BUILD TREE
      right_sub_tree = TreeNode.new(tokens.pop)
      root.right = right_sub_tree
      # root.right = get_next_node(tokens)
      root
    end
  end
  # If we are a number node, we are a leaf, so skip this.

  # The second token will be the beginning of the right subtree.

  # After the right subtree will come the left subtree.
end
binding.pry
# data = File.read("data").split("\n").map {|l| parse_postfix_expression(l)}