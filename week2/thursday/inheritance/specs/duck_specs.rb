require "minitest/autorun"
require 'minitest/rg'
require_relative "../behaviours/fly"
require_relative "../behaviours/quack"
require_relative '../duck'

class DuckTest < MiniTest::Test

  def setup
    @duck = Duck.new(Quack.new, Fly.new)
  end

  def test_duck_can_fly
    assert_equal("flying high", @duck.fly)
  end

  def test_duck_has_two_legs
    assert_equal(2, @duck.num_legs)
  end

  def test_duck_can_quack
    assert_equal("quack", @duck.call)
  end

end