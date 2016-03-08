require_relative('./player.rb')
require 'pg'

class Team

  attr_reader :name, :manager, :robes, :id

  def initialize(options)
    @name = options['name']
    @manager = options['manager']
    @robes = options['robes']
    @id = options['id']
  end

  def self.get_all
    teams = run_sql("SELECT * FROM teams")
    return result = teams.map { |team| Team.new(team) }
  end

  def self.find(id)
    sql = "SELECT * FROM teams WHERE id = #{id}"
    team = Team.run_sql(sql)
    result = Team.new(team[0])
    result
  end

  def save
    sql = "INSERT INTO teams(
    name,
    manager,
    robes
    ) VALUES (
    '#{@name}',
    '#{@manager}',
    '#{@robes}'
    )"
    Team.run_sql(sql)
  end

  private
  def self.run_sql(query)
    begin
      db = PG.connect(dbname: 'sinatra_quidditch', host: 'localhost')
      result = db.exec(query)
      return result
    ensure
      db.close
    end
  end

end