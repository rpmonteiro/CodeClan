require('minitest/autorun')
require('minitest/rg')
require_relative('app')

class TestApp < Minitest::Test
  def test_adds_one_to_each_item
    assert_equal([2, 3, 4], add_one([1, 2, 3]))
  end

  def test_multiply_each_item_by_two
    assert_equal([2, 4, 6], multiply_each_item_by_two([1, 2, 3]))
  end

  def test_map_add_one_to_each_item
    assert_equal([2, 3, 4], map([1, 2, 3]) { |i| i + 1})
  end

  def test_map_multiply_each_item_by_two
    assert_equal([2, 4, 6], map([1, 2, 3]) { |i| i * 2})
  end

end

