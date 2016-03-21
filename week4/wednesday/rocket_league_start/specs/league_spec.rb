require('minitest/autorun')
require 'minitest/rg'
require_relative('../models/league.rb')
require_relative('../models/match.rb')
require_relative('../models/team.rb')
require_relative('setup.rb')

class TestLeague < Minitest::Test

  def setup
    @setup = Setup.new
  end

  require_relative('setup')
  def test_list_teams
    result = @setup.league.list_teams.size
    expectation = 5
    assert_equal(expectation, result)
  end

  def test_total_wins_by_team
    result = @setup.league.total_wins(@setup.team5)
    assert_equal(4, result)
    result2 = @setup.league.total_wins(@setup.team1)
    assert_equal(3, result2)
  end

  def test_total_losses_by_team
    result = @setup.league.total_losses(@setup.team5)
    assert_equal(4, result)
    result2 = @setup.league.total_losses(@setup.team1)
    assert_equal(2, result2)
  end

  # def test_total_goals_against

  # end

  # def test_total_goals_for

  # end

  # def test_goal_difference

  # end

  # def test_league_points

  # end

  # def test_total_goals_scored_at_home

  # end

  # def test_total_goals_scored_away

  # end

end
