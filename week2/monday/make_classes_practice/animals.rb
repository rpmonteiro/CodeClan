class Animal

  attr_reader :name, :species, :breed
  attr_accessor :legs, :age

  def initialize(name, legs, age, species, breed )
    @name = name
    @legs = legs
    @age = age
    @species = species
    @breed = breed
  end

end