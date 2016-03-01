require 'minitest/autorun'
require 'minitest/rg'

require_relative '../models/calculator'

class TestCalculator < Minitest::Test

  def setup
    @calculator = Calculator.new(4, 2)
  end

  def test_add
    assert_equal(6, @calculator.add)
  end
end
