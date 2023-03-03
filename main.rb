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

  def size
    current_node = @head
    count = 0
    while (current_node = current_node.next_node)
      count += 1
    end
    count
  end

  def head
    @head.next_node
  end

  def tail
    @tail.next_node
  end

  def at(index)
    current_node = @head
    count = 0
    while (current_node = current_node.next_node)
      return current_node.value if count == index
      count += 1
    end
  end

  def pop
    current_node = @head
    while (current_node = current_node.next_node)
      return current_node.next_node = nil if current_node.next_node.next_node.nil?
    end
  end

  def contains?(value)
    current_node = @head
    while (current_node = current_node.next_node)
      return true if current_node.value == value
    end
    false
  end

  def find(value)
    current_node = @head
    count = 0
    while (current_node = current_node.next_node)
      return count if current_node.value == value
      count += 1
    end
  end

  def to_s
    current_node = @head
    string = ''
    while (current_node = current_node.next_node)
      string += "( #{current_node.value} ) -> "
    end
    string += 'nil'
  end
end
