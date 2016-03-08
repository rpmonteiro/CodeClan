require_relative '../db/sql_runner.rb'

class OwnedPokemon

  attr_reader :id, :trainer_id, :pokemon_id

  def initialize(params)
    @id = params['id'].to_i
    @trainer_id = params['trainer_id'].to_i
    @pokemon_id = params['pokemon_id'].to_i
  end

  def save

  end

  def self.all

  end

  def self.delete_all

  end



end