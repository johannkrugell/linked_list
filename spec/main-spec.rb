# require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

# require main.rb
require_relative '../main'

class LinkedListTest < Minitest::Test
  def setup
    @list = LinkedList.new('Test')
  end
  
  # adds a new node containing value to the end of the list
  def test_append_list
    @list.append('John Doe')
    assert_equal 'John Doe', @list.head.value
  end

  def test_prepend_list
    @list.prepend('Jane Doe')
    assert_equal 'Jane Doe', @list.head.value
  end

  def test_list_size
    @list.append('John Doe')
    @list.append('Jane Doe')
    assert_equal 2, @list.size
  end

  def test_head
    @list.append('John Doe')
    assert_equal 'John Doe', @list.head.value
  end

  def test_tail
    @list.append('John Doe')
    assert_equal 'John Doe', @list.tail.value
  end

  def test_index
    @list.append('John Doe')
    @list.append('Jane Doe')
    @list.append('Bob Doe')
    assert_equal 'Jane Doe', @list.at(1)
  end

  def test_pop
    @list.append('John Doe')
    @list.append('Jane Doe')
    @list.append('Bob Doe')
    @list.pop
    assert_equal 2, @list.size 
  end 
end