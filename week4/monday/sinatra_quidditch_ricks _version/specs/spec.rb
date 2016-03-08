require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../models/team' )
require_relative( '../models/player' )

class TestQuidditch < MiniTest::Test
## This is a mess!  

  def setup
    options = {
      "name" => 'CodeClan City', 
      "manager" => 'R.J. Henry'
    }
    @team = Team.new( options )
    # @team.save()

    # (0..4).each do |p|
    #   @player = Player.new({"first_name" => "Harry", "last_name" => "Potter", "team_id" => @team.id})
    #   @player.save()
    # end

  end

  # def test_name()
  #   assert_equal( 'CodeClan City', @team.name() )
  # end

  # def test_manager()
  #   assert_equal( 'R.J. Henry', @team.manager() )
  # end

  def test_max_players()
    # Ummm......
    assert_equal( true, Team.max_players?(1) )
  end

end