require_relative '../models/league.rb'
require_relative '../models/match.rb'
require_relative '../models/team.rb'
class Setup

  attr_accessor :team1, :team2, :team3, :team4, :team5, :match1, :match2, :match3, :match4, :match5, :match6, :match7, :match8, :match9, :match10, :match11, :match12, :match13, :match14, :match15, :league, :matches

  def initialize
    Match.delete_all
    Team.delete_all
    @team1 = Team.create('name' => 'Ricks team')
    @team2 = Team.create('name' => 'Vals team')
    @team3 = Team.create('name' => 'Guys team')
    @team4 = Team.create('name' => 'Johns team')
    @team5 = Team.create('name' => 'Sams team')

    @teams = [@team1, @team2, @team3, @team4, @team5]
    @match1 = Match.create('home_team_id' => @team1.id,
                        'away_team_id' => @team2.id,
                        'home_team_score' => 4,
                        'away_team_score' => 2
                       )

    @match2 = Match.create('home_team_id' => @team3.id,
                        'away_team_id' => @team5.id,
                        'home_team_score' => 15,
                        'away_team_score' => 0
                       )

    @match3 = Match.create('home_team_id' => @team2.id,
                        'away_team_id' => @team3.id,
                        'home_team_score' => 3,
                        'away_team_score' => 2
                       )
    @match4 = Match.create('home_team_id' => @team4.id,
                        'away_team_id' => @team5.id,
                        'home_team_score' => 6,
                        'away_team_score' => 9
                       )
    @match5 = Match.create('home_team_id' => @team1.id,
                        'away_team_id' => @team5.id,
                        'home_team_score' => 3,
                        'away_team_score' => 1
                       )
    @match6 = Match.create('home_team_id' => @team3.id,
                        'away_team_id' => @team4.id,
                        'home_team_score' => 1,
                        'away_team_score' => 2
                       )
    @match7 = Match.create('home_team_id' => @team1.id,
                        'away_team_id' => @team2.id,
                        'home_team_score' => 1,
                        'away_team_score' => 1
                       )
    @match8 = Match.create('home_team_id' => @team5.id,
                        'away_team_id' => @team1.id,
                        'home_team_score' => 1,
                        'away_team_score' => 1
                       )
    @match9 = Match.create('home_team_id' => @team3.id,
                        'away_team_id' => @team4.id,
                        'home_team_score' => 5,
                        'away_team_score' => 2
                       )
    @match10 = Match.create('home_team_id' => @team5.id,
                         'away_team_id' => @team3.id,
                         'home_team_score' => 3,
                         'away_team_score' => 2
                        )
    @match11 = Match.create('home_team_id' => @team1.id,
                         'away_team_id' => @team3.id,
                         'home_team_score' => 4,
                         'away_team_score' => 2
                        )
    @match12 = Match.create('home_team_id' => @team5.id,
                         'away_team_id' => @team2.id,
                         'home_team_score' => 1,
                         'away_team_score' => 2
                        )
    @match13 = Match.create('home_team_id' => @team3.id,
                         'away_team_id' => @team4.id,
                         'home_team_score' => 6,
                         'away_team_score' => 3
                        )
    @match14 = Match.create('home_team_id' => @team3.id,
                         'away_team_id' => @team5.id,
                         'home_team_score' => 3,
                         'away_team_score' => 5
                        )
    @match15 = Match.create('home_team_id' => @team4.id,
                         'away_team_id' => @team5.id,
                         'home_team_score' => 2,
                         'away_team_score' => 7
                        )

    @matches = [@match1, @match2, @match3, @match4, @match5, @match6, @match7,
                @match8, @match9, @match10, @match11, @match12, @match13, @match14, @match15]
    options = {
      'teams' => @teams,
      'matches' => @matches
    }
    @league = League.new(options)
  end
end

