require_relative('../models/pokemon.rb')
require_relative('../models/trainer.rb')
require_relative('../models/owned_pokemon.rb')

require('pry-byebug')

OwnedPokemon.delete_all
Trainer.delete_all
Pokemon.delete_all

trainer1 = Trainer.new('name' => 'Tony')
trainer2 = Trainer.new('name' => 'Scott')
updated_trainer1 = trainer1.save
updated_trainer2 = trainer2.save

pokemon1 = Pokemon.new('name' => 'Charmander')
pokemon2 = Pokemon.new('name' => 'Pikachu')
updated_pokemon1 = pokemon1.save
updated_pokemon2 = pokemon2.save

entry1 = OwnedPokemon.new('trainer_id' => updated_trainer1.id, 'pokemon_id' => updated_pokemon1.id)
entry1.save
entry2 = OwnedPokemon.new('trainer_id' => updated_trainer2.id, 'pokemon_id' => updated_pokemon1.id)
entry2.save
entry3 = OwnedPokemon.new('trainer_id' => updated_trainer2.id, 'pokemon_id' => updated_pokemon2.id)
entry3.save

binding.pry
nil
