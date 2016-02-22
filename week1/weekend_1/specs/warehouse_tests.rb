require('minitest/autorun')
require_relative('../warehouse.rb')

class TestMyFunctions < MiniTest::Test
  def setup
    @ikea = {
     a1: "needle",
     a2: "stop sign",
     a3: "blouse",
     a4: "hanger",
     a5: "rubber duck",
     a6: "shovel",
     a7: "bookmark",
     a8: "model car",
     a9: "glow stick",
     a10: "rubber band",
   
     b1: "tyre swing",
     b2: "sharpie",
     b3: " picture frame",
     b4: "photo_album",
     b5: "nail filer",
     b6: "tooth paste",
     b7: "bath fizzers",
     b8: "tissue box",
     b9: "deodorant",
     b10: "cookie jar",
   
     c1: "rusty nail",
     c2: "drill press",
     c3: "chalk",
     c4: "word search",
     c5: "thermometer",
     c6: "face wash",
     c7: "paint brush",
     c8: "candy wrapper",
     c9: "shoe lace",
     c10: "leg warmers"
    }

    @ikea_order = [:a10, :a9, :a8, :a7, :a6, :a5, :a4, :a3, :a2, :a1, :c1, :c2, :c3, :c4, :c5, :c6, :c7, :c8, :c9, :c10, :b1, :b2, :b3, :b4, :b5, :b6, :b7, :b8, :b9, :b10]
  end

  def test_find_item_at_bay
    assert_equal("leg warmers", find_item_at_bay(@ikea, :c10))
    assert_equal("nail filer", find_item_at_bay(@ikea, :b5))
  end

  def test_find_bay_from_item
    assert_equal(:c10, find_bay_from_item(@ikea, "leg warmers"))
  end

  def test_find_multiple_items
    result = ["candy wrapper", "shoe lace", "leg warmers"]
    assert_equal(result, find_multiple_items(@ikea, [:c8, :c9, :c10]))
    result2 = ["chalk"]
    assert_equal(result2, find_multiple_items(@ikea, [:c3]))
  end

  def test_find_multiple_bays
    result = [:c4, :c5, :c2]
    result2 = [:a4, :b9, :c8, :a10]
    query = ["word search", "thermometer", "drill press"]
    query2 = ["hanger", "deodorant", "candy wrapper", "rubber band"]
    assert_equal(result, find_multiple_bays(@ikea, query))
    assert_equal(result2, find_multiple_bays(@ikea, query2))
  end

  def test_sort_bays_by_distance
    assert_equal([:c1, :c8, :b5, :b6, :b10], sort_bays_by_distance(@ikea_order, [:b5, :b10, :b6, :c1, :c8]))
  end

  def test_calculate_distance_between_bays_in_extremities
    assert_equal(5, calculate_distance_between_bays_in_extremities(@ikea_order, [:b5, :b10, :b6]))
    assert_equal(20, calculate_distance_between_bays_in_extremities(@ikea_order, [:b10, :a1, :c5]))
  end

  def test_items_and_distance_message
    result = [:b5, :b6, :b10, 5]
    assert_equal(result, items_and_distance(@ikea_order, @ikea, [:b5, :b10, :b6]))
  end

  def test_bays_from_entrance_to_exit
    items = ["hanger", "deodorant", "candy wrapper", "rubber band"]
    query = bays_from_entrance_to_exit(@ikea_order, @ikea, items)
    result = ["a10", "a4", "c8", "b9"]
    assert_equal(result, query)
  end
end