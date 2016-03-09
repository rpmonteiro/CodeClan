require( 'pg' )
require_relative('pokemon')

class Trainer

  attr_reader( :id, :email,:name )

  def initialize( options )
    @id = options['id']
    @name = options['name']
  end

  def last_entry
    sql = 'SELECT * FROM Trainers ORDER BY id DESC limit 1'
    Trainer.map_item(sql)
  end

  def save
    sql = "INSERT INTO Trainers (name) VALUES ('#{ @name }')"
    SqlRunner.run_sql(sql)
    last_entry
  end

  def pokemon
    sql = "SELECT p.* FROM Pokemons p
    INNER JOIN OwnedPokemons o ON o.pokemon_id = p.id
    WHERE o.trainer_id = #{@id}"
    Pokemon.map_item(sql)
  end

  def self.delete_all
    sql = 'DELETE FROM Trainers'
    SqlRunner.run_sql(sql)
  end

  def self.all
    sql = 'SELECT * FROM Trainers'
    Trainer.map_items(sql)
  end

  def self.map_items(sql)
    trainers = SqlRunner.run_sql(sql)
    result = trainers.map { |t| Trainer.new(t) }
    result
  end

  def self.map_item(sql)
    result = Trainer.map_items(sql)
    result.first
  end
end
