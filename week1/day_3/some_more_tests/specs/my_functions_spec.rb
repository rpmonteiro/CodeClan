require('minitest/autorun')
require_relative('../my_functions.rb')

class TestMyFunctions < MiniTest::Test
  def test_grab_first
    result = grab_first( [1, 2, 3, 4, 5] )
    assert_equal( 1, result )
  end

  def test_grab_position_six
    assert_equal("Ricas", grab_position_six([0, 1, 2, 3, 4, 5, "Ricas"]))
  end
end 