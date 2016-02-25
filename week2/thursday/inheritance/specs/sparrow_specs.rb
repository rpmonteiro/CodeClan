require "minitest/autorun"
require 'minitest/rg'
require_relative "../behaviours/fly"
require_relative "../behaviours/chirp"
require_relative '../sparrow'

class SparrowTest < MiniTest::Test

  def setup
    @sparrow = Sparrow.new(Chirp.new, Fly.new)
  end

  def test_sparrow_can_fly
    assert_equal("flying high", @sparrow.fly)
  end

  def test_sparrow_can_chirp
    assert_equal("chirp", @sparrow.call)
  end

end