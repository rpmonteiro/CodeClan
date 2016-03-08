require('pg')

class Player
  attr_reader :name, :team_id, :id
  @@db_credentials = { dbname: 'sinatra_quidditch', host: 'localhost' }

  def initialize(options) 
    @name = options["name"]
    @team_id = options["team_id"]
    @id = options["id"] or nil
  end

  def team()
    sql = "SELECT * FROM teams WHERE id = #{@team_id}"
    result = Player.run_sql( sql )
    Team.new( result[0] )
  end

  def save()
    sql = "INSERT INTO players ( 
      name,
      team_id) 
      VALUES (
      '#{ @name }',
      '#{ @team_id }'
      )"
    Player.run_sql( sql )
  end

  def self.find(id)
   sql = "SELECT * FROM players WHERE id = #{id.to_i}"
   result = Player.run_sql( sql )
   return Player.new( result[0] )
  end

  def update()
    sql = "UPDATE players SET name='#{ @first_name }', team_id = #{ @team_id } WHERE id = #{@id}"
    return Player.run_sql( sql )
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