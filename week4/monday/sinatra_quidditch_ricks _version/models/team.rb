rrequire('pg')
require( 'pry-byebug' )

class Team
  attr_reader :name, :manager, :id
  @@db_credentials = { dbname: 'sinatra_quidditch', host: 'localhost' }

  def initialize(options)
    @name = options["name"]
    @manager = options["manager"]
    @id = options["id"] or nil
  end

  def players()
    sql = "SELECT * FROM players WHERE team_id=#{@id} ORDER BY name"
    players = Team.run_sql(sql)
    result = players.map { |player| Player.new(player) }
  end

  def self.all()
    sql = "SELECT * FROM teams ORDER BY name"
    teams = Team.run_sql( sql )
    result = teams.map { |team| Team.new(team) }
  end

  def save()
    sql = "INSERT INTO teams (
      name,
      manager)
      VALUES (
      '#{ @name }',
      '#{ @manager }'
      )"
    return Team.run_sql( sql )
  end

  def self.find(id)
   sql = "SELECT * FROM teams WHERE id = #{id.to_i}"
   result = Team.run_sql( sql )
   team = Team.new( result[0] )
  end

  def update()
    sql = "UPDATE teams SET name='#{ @name }', manager='#{ @manager }' WHERE id = #{@id}"
    return Team.run_sql( sql )
  end

  private

  def self.run_sql( sql )
    begin
      db = PG.connect( @@db_credentials )
      result = db.exec( sql )
    ensure
      db.close
    end
    return result
  end

end
