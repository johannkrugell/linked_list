# frozen_string_literal: true

# Node class that initializes node and has node methods
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

# Linked List class that initializes list and has list methods
class LinkedList < Node
  attr_accessor :name
  attr_reader :head, :tail

  def initialize(name)
    @name = name
    @head = Node.new(nil, nil)
    @tail = Node.new(nil, nil)
  end

  def append(value)
    current_node = @head
    while !current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(value, nil)
    @tail = current_node
  end

  def prepend(value)
    current_node = @head
    current_node.next_node = Node.new(value, current_node.next_node)
  end

  def print_list
    current_node = @head
    puts current_node.value
    while (current_node = current_node.next_node)
      puts current_node.value
    end
  end
end
