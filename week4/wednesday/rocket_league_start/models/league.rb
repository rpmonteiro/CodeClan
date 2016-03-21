class League
  attr_reader :teams, :matches
  def initialize(options)
    @teams = options['teams']
    @matches = options['matches']
  end

  def list_teams
    @teams.map(&:name)
  end

  def total_wins(team)
    counter = 0
    @matches.each do |match|
      if match.home_team_id == team.id || match.away_team_id == team.id
        counter += 1 if match.won?(team)
      end
    end
    counter
  end

  def total_losses(team)
    counter = 0
    @matches.each do |match|
      if match.home_team_id == team.id || match.away_team_id == team.id
        counter += 1 if !match.won?(team)
      end
    end
    counter
  end
end
