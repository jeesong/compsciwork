  unless tokens.empty?
  # The next token will be the root of the tree we are building.
    root =TreeNode.new(tokens.pop)
    if numeric?(tokens.last)
      root.right = TreeNode.new(tokens.pop)
      root.left = get_next_node(tokens)
    else
      root.right =get_next_node(tokens)
    end

def get_next_node(tokens)
  curNode = TreeNode.new(tokens.pop)
  unless numeric?(curNode.val)
    curNode.right = get_next_node(tokens)
    curNode.left = get_next_node(tokens)
  end
  curNode
end