require 'minitest/autorun'
require 'minitest/rg'

require_relative '../models/pizza.rb'

class TestPizza < Minitest::Test
  def setup
    options = {
      'first_name' => 'Tony',
      'last_name' => 'Goncalves',
      'pizza_type' => 'Pepperonni',
      'quantity' => '10'
    }
    @pizza = Pizza.new(options)
  end

  def test_first_name
    assert_equal('Tony', @pizza.first_name)
  end

  def test_full_name
    assert_equal('Tony Goncalves', @pizza.full_name)
  end

  def test_total
    assert_equal(100, @pizza.total)
  end
end
