require_relative('../models/pokemon.rb')
require_relative('../models/trainer.rb')
require_relative('../models/owned_pokemon.rb.rb')

require('pry-byebug')

Trainer.delete_all
Pokemon.delete_all

trainer1 = Trainer.new('name' => 'Tony')
trainer2 = Trainer.new('name' => 'Scott')
trainer1.save
trainer2.save

pokemon1 = Pokemon.new('name' => 'Charmander')
pokemon2 = Pokemon.new('name' => 'Pikachu')
pokemon1.save
pokemon2.save

entry1 = OwnedPokemons.new('trainer_id' => '1', 'pokemon_id' => 1)

binding.pry
nil
