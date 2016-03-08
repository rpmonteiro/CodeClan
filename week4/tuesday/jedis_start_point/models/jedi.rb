require('pg')
require_relative('../db/sql_runner')
require_relative 'lightsaber.rb'

class Jedi
  attr_reader :id, :name

  def initialize(options)
    @id = options['id']
    @name = options['name']
  end

  def save
    sql = "INSERT INTO Jedis (name) VALUES ('#{@name}')"
    SqlRunner.run_sql(sql)
  end

  def self.find
    sql = "SELECT * FROM Jedis WHERE id = #{@id}"
    jedis = SqlRunner.run_sql(sql)
    Jedi.new(jedis.first)
  end

  def self.all
    sql = 'SELECT * FROM Jedis'
    jedis = SqlRunner.run_sql(sql)
    result = jedis.map { |j| Jedi.new(j) }
    result
  end
end
