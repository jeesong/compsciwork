require 'pry'

class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def store(new_value)
    # node = self
    if @value > new_value
      if @left.nil?
        @left = TreeNode.new(new_value)
        # node = node.left
      else
        @left.store(new_value) ## Need to review this
      end
    elsif @value < new_value
      if @right.nil?
        @right = TreeNode.new(new_value)
        # node = node.right
      else
        @right.store(new_value)
      end
    end
  end

  def search(goal_value)
    if @value == goal_value
      self # self changes depending on the object that was called
    elsif @value > goal_value
      if @left.nil?
        false
      else
        @left.search(goal_value)
      end
    elsif @value < goal_value
      if @right.nil?
        false
      else
        @right.search(goal_value)
      end
    end
  end
end

root = TreeNode.new(5)
root.store(7)
root.store(2)
root.store(4)
root.store(1)
root.store(6)
root.store(20)
root.store(25)
binding.pry

### Alternate code for search

  # return the node you are looking for
  # def search(goal_value)
  #   if @value > goal_value
  #     if @left.value == goal_value
  #       @left
  #     else
  #       @left.search(goal_value)
  #     end
  #   elsif @value < goal_value
  #     if @right.value == goal_value
  #       @right
  #     else
  #       @right.search(goal_value)
  #     end
  #   else
  #     self
  #   end
  # end
