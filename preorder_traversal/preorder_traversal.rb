class Node
  attr_accessor :data, :left, :right

  def initialize(d)
    @data = d
    @left = nil
    @right = nil
  end
end

def insert(root, data)
  if root.nil?
    return Node.new(data)
  else
    if data <= root.data
      if root.left.nil?
        root.left = insert(root.left, data)
      else
        insert(root.left, data)
      end
    else
      if root.right.nil?
        root.right = insert(root.right, data)
      else
        insert(root.right, data)
      end
    end
    return root
  end
end

def pre_order(root)
  return if root.nil?

  print "#{root.data} "
  pre_order(root.left)
  pre_order(root.right)
end

node_count = gets.chomp.to_i

nodes = gets.chomp.split(" ")

root = nil
nodes.each do |x|
  data = x.to_i
  root = insert(root, data)
end

pre_order(root)
