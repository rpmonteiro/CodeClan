require ('minitest/autorun')
require_relative ('../my_functions')

class My_Functions < MiniTest::Test

  def test_my_name()
    assert_equal( "Rick", my_name() )
  end

  def test_my_sum()
    assert_equal( 3, my_sum( 1, 2 ) )
  end
  
end