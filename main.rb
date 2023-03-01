class Node
  attr_accessor :value, :next_node

  def value(value = nil, next_node = nil)
    @value = nil
    @next_node = nil
  end
end

class LinkedList < Node
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @head = nil
    @tail = nil
  end
end

# Create a new list
list = LinkedList.new('Employees')

# Add the following nodes to the list
list.value('John Doe')
puts list.inspect