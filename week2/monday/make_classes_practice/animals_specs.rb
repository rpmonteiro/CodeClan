require ('minitest/autorun')
require_relative('./animals')

class TestAnimal < MiniTest::Test
  def setup
    @my_dog = Animal.new("Pintas", 4, 8, "dog", "labrador/rottweiler")
  end

  def test_animal_name
    assert_equal("Pintas", @my_dog.name)
  end

  def test_animal_legs
    assert_equal(4, @my_dog.legs)
  end

  def test_animal_age
    assert_equal(8, @my_dog.age)
  end

  def animal_species
    assert_equal("dog", @my_dog.species)
  end

  def test_animal_breed
    assert_equal("labrador/rottweiler", @my_dog.breed)
  end

  def test_set_legs
    @my_dog.legs = 3
    assert_equal(3, @my_dog.legs)
  end

  def test_set_age
    @my_dog.age = 5
    assert_equal(5, @my_dog.age)
  end

end