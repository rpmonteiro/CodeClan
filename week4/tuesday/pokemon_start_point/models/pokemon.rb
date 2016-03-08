require( 'pg' )
require_relative('trainer')
require_relative('../db/sql_runner')

class Pokemon

  attr_reader( :id, :name )

  def initialize( options )
    @id = options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO Pokemons (name) VALUES ('#{ @name }')"
    SqlRunner.run_sql( sql )
  end

  def trainers()

  end

  def self.delete_all
    sql = 'DELETE FROM Pokemons'
    SqlRunner.run_sql(sql)
  end

  def self.all()
    sql = "SELECT * FROM Pokemons"
    return Pokemon.map_items(sql)
  end

  def self.map_items(sql)
    pokemon = SqlRunner.run_sql(sql)
    result = pokemon.map { |product| Pokemon.new( product ) }
    return result
  end

  def self.map_item(sql)
    result = Pokemon.map_items(sql)
    return result.first
  end

end