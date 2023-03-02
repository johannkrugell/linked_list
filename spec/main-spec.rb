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
    assert_equal 'John Doe', @list.tail.value
  end
end