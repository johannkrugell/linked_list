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

  def initialize(list)
    @list = list
    @head = nil
    @tail = nil
  end

  def append(value = nil, next_node = nil)
    @tail.nil? ? @tail = Node.new(value, next_node) : return
  end
end
