require_relative( '../models/match' )
require_relative( '../models/team' )
require( 'pry-byebug' )

Match.delete_all
Team.delete_all

team1 = Team.create( { 'name' => "Ricks Team" } )
team2 = Team.create( { 'name' => "Jays Team" } )

match = Match.create( { 
          'home_team_id' => team1.id, 
          'away_team_id' => team2.id,
          'home_team_score' => 2,
          'away_team_score' => 1 
          } )

binding.pry
nil
