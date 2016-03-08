require_relative '../db/sql_runner.rb'

class OwnedPokemon
  attr_reader :id, :trainer_id, :pokemon_id

  def initialize(params)
    @id = params['id'].to_i
    @trainer_id = params['trainer_id'].to_i
    @pokemon_id = params['pokemon_id'].to_i
  end

  def save
    sql = "
      INSERT INTO OwnedPokemons( trainer_id, pokemon_id )
      VALUES ( #{@trainer_id}, #{@pokemon_id} )
      "
    SqlRunner.run_sql(sql)
  end

  def self.all

  end

  def self.delete_all
    sql = 'DELETE FROM OwnedPokemons'
    SqlRunner.run_sql(sql)
  end
end
