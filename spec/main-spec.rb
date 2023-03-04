# require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

# require main.rb
require_relative '../main'

class LinkedListTest < Minitest::Test
  def setup
    @list = LinkedList.new('Test')
    # add new node to list without using append
    @list.head.next_node = Node.new('John Doe', nil)
    @list.head.next_node.next_node = Node.new('Jane Doe', nil)
    @list.head.next_node.next_node.next_node = Node.new('Bob Doe', nil)
    @list.tail = 'Bob Doe'
  end
  
  # adds a new node containing value to the end of the list
  def test_append_list
    @list.append('Jack Doe')
    assert_equal 'Jack Doe', @list.head.next_node.next_node.next_node.next_node.value
  end

  def test_prepend_list
    @list.prepend('Jane Doe')
    assert_equal 'Jane Doe', @list.head.next_node.value
  end

  def test_list_size
    assert_equal 3, @list.size
  end

  def test_head
    assert_equal 'John Doe', @list.head.next_node.value
  end

  def test_tail
    assert_equal 'Bob Doe', @list.tail
  end

  def test_index
    assert_equal 'Jane Doe', @list.at(1)
  end

  def test_pop
    @list.pop
    assert_equal 2, @list.size 
  end 

  def test_contains
    assert_equal true, @list.contains?('Jane Doe')
  end

  def test_find
    assert_equal 1, @list.find('Jane Doe')
  end

  def test_to_s
    assert_equal '( John Doe ) -> ( Jane Doe ) -> ( Bob Doe ) -> nil', @list.to_s
  end

  def test_insert_at
    @list.insert_at('Sally Doe', 2)
    assert_equal 'Sally Doe', @list.head.next_node.next_node.next_node.value
  end

  def test_remove_at
    @list.remove_at(1)
    assert_equal 'Bob Doe', @list.head.next_node.next_node.value
  end

end