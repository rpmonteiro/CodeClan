require('minitest/autorun')
require_relative('../models/match')
require_relative('setup')
require 'minitest/rg'
require 'pry-byebug'

class TestMatch < Minitest::Test
  def setup
    @setup = Setup.new
  end

  def test_team1_won_against_team2_name
    action = @setup.match1.final_result[:home_team].name
    assert_equal('Ricks team', action)
  end

  def test_team1_won_against_team2_winner_score
    action = @setup.match1.final_result[:winner_score]
    assert_equal(4, action)
  end

  def test_team1_won_against_team2_loser
    action = @setup.match1.final_result[:loser].name
    assert_equal('Vals team', action)
  end

  def test_team1_won_against_team2
    assert_equal(true, @setup.match1.won?(@setup.team1))
  end

  def test_team5_won_against_team4
    assert_equal(true, @setup.match4.won?(@setup.team5))
  end

  def test_team5_vs_team_1_was_a_draw
    assert_equal(false, @setup.match7.won?(@setup.team5))
  end

end
