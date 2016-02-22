require('minitest/autorun')
require_relative('tdd_lab_functions.rb')

class TestMyFunctions < MiniTest::Test

  def test_sum_of_length_of_arrays()
    prices = [ 1.23, 6.98, 8.43, 2.45 ]
    costs = [ 4.23, 1.12, 0.52, 8.67 ]
    categories = [ 'fruit', 'salad', 'meat', 'cereals']
    supermarkets = [ 'sainsburys', 'tesco', 'lidl']

    assert_equal(8, sum_of_arrays_length(prices, costs))
    assert_equal(12, sum_of_arrays_length(prices, costs, categories))
    assert_equal(15, sum_of_arrays_length(prices, costs, categories, supermarkets))
  end

  def test_sum_of_array_contents()
    data = [1, 2, 3, 4, 5]
    data_mixed = [1, 2, 3, 'john', true, john: 20]

    assert_equal(15, sum_of_array_contents(data))
    assert_equal(6, sum_of_array_contents(data_mixed))
  end

  def test_has_item()
    hogwarts = [ 'Hufflepuff', 'Slytherin', 'Gryffindor', 'Ravenclaw' ]
    assert_equal(true, has_item("Ravenclaw", hogwarts))
    assert_equal(false, has_item("Motorola", hogwarts))
  end

  def test_wheres_tony
    teacher_wallets = {
      'Tony' => 12,
      'Kat'  => 10,
      'Val'  => 1356,
      'Rick' => 1
    }

    fake_teachers_wallets = {
      'Sam' => 12,
      'Francesco'  => 10,
      'Topogigio'  => 1356,
      'RicWithNoK' => 1
    }

    assert_equal('Tony', wheres_tony(teacher_wallets))
    assert_equal('Sam', wheres_tony(fake_teachers_wallets))
  end

  def test_all_capitals
    countries = {
      uk: {
        capital: 'London',
        population: 60
      },
      france: {
        capital: 'Paris',
        population: 70
      },
      italy: {
        capital: 'Rome',
        population: 56
      }
    }
    assert_equal(['London', 'Paris', 'Rome'], all_capitals(countries))
  end

end