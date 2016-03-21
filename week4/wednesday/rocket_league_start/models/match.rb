require 'pg'
require_relative 'team.rb'

class Match
  attr_reader(:id, :home_team_id, :away_team_id, :home_team_score, :away_team_score)

  def initialize(options)
    @id = options['id']
    @home_team_id = options['home_team_id']
    @away_team_id = options['away_team_id']
    @home_team_score = options['home_team_score']
    @away_team_score = options['away_team_score']
  end

  def self.all
    sql = "SELECT * FROM matches"
    matches = SqlRunner.execute( sql )
    return matches.map { |match| Match.new( match ) }
  end

  def self.create( options )
    sql = "INSERT INTO matches ( home_team_id, away_team_id, home_team_score, away_team_score ) VALUES ( #{ options['home_team_id'] }, #{ options['away_team_id'] }, #{ options['home_team_score'] },#{ options['away_team_score'] } )"
    SqlRunner.execute( sql )
    return Match.new( Match.last_entry() )
  end

  def self.last_entry
    sql = "SELECT * FROM matches ORDER BY id DESC limit 1;"
    return SqlRunner.execute( sql ).first()
  end

  def self.delete_all
    sql = "DELETE FROM matches"
    SqlRunner.execute( sql )
  end

  def won?(team)
    # final_result[:winner].name == team.name ? true : false
    if final_result[:winner]
      final_result[:winner].name == team.name ? true : false
    else
      return false
    end
  end

  def final_result
    @home_team = Team.find(@home_team_id)
    @away_team = Team.find(@away_team_id)
    result_win_or_loss = {
      home_team: @home_team,
      away_team: @away_team,
      winner: nil,
      loser: nil,
      winner_score: nil,
      loser_score: nil
    }

    result_draw = {
      home_team: @home_team,
      away_team: @away_team,
      goals_scored: nil
    }

    if @home_team_score > @away_team_score
      result_win_or_loss[:winner] = @home_team
      result_win_or_loss[:winner_score] = @home_team_score.to_i
      result_win_or_loss[:loser] = @away_team
      result_win_or_loss[:loser_score] = @away_team_score.to_i
      return result_win_or_loss
    elsif @away_team_score > @home_team_score
      result_win_or_loss[:winner] = @away_team
      result_win_or_loss[:winner_score] = @away_team_score.to_i
      result_win_or_loss[:loser] = @home_team
      result_win_or_loss[:loser_score] = @home_team_score.to_i
      return result_win_or_loss
    else
      result_draw[:goals_scored] = @home_team_score
      return result_draw
    end
  end
end
