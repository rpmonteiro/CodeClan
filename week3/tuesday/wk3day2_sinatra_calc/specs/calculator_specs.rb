require 'minitest/autorun'
require 'minitest/rg'

require_relative '../models/calculator'

class TestCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new(4, 2)
    @calculator2 = Calculator.new(15, 5)
    @calculator3 = Calculator.new(30, 10)
  end

  def test_add
    assert_equal(6, @calculator.add)
  end

  def test_subtract
    assert_equal(10, @calculator2.subtract)
  end

  def test_divide
    assert_equal(3, @calculator3.divide)
  end
end
