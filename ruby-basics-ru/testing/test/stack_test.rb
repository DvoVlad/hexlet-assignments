# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_add()
    stack = Stack.new
    stack.push! 'ruby'
    stack.push! 'php'
    stack.push! 'java'
    assert stack.to_a == ['ruby', 'php', 'java']
    assert stack.size == 3
    assert stack.empty? == false
  end
  
  def test_pop()
    stack = Stack.new
    stack.push! 'ruby'
    stack.pop!
    assert stack.to_a == []
    assert stack.size == 0
  end
  
  def test_clear()
    stack = Stack.new
    stack.push! 'ruby'
    stack.push! 'php'
    stack.push! 'java'
    stack.clear!
    assert stack.to_a == []
    assert stack.size == 0
  end
  
  def test_empty()
    stack = Stack.new
    assert stack.empty? == true
    stack.push! 'ruby'
    assert stack.empty? == false
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
