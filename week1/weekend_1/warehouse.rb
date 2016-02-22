def find_item_at_bay(warehouse, bay)
  return warehouse[bay]
end

def find_bay_from_item(warehouse, item)
  return warehouse.key(item)
end

def find_multiple_items(warehouse, bays)
  items_found = []
  bays.each do |bay|
    items_found << warehouse[bay]
  end
  return items_found
end

def find_multiple_bays(warehouse, items)
  bays_found = []
  items.each do |item|
    bays_found << warehouse.key(item)
  end
  return bays_found
end

def sort_bays_by_distance(order, bays)
  return bays.sort_by! { |bay| order.index(bay) }
end

def calculate_distance_between_bays_in_extremities(order, bays)
  sort_bays_by_distance(order, bays)
  return order.index(bays[-1]) - order.index(bays[0])
end

def items_and_distance(order, warehouse, bays)
  items = find_multiple_items(warehouse, bays).join(", ")
  distance = calculate_distance_between_bays_in_extremities(order, bays).to_i
  joined_info = bays << distance
  return joined_info
end

def bays_from_entrance_to_exit(order, warehouse, items)
  bays = find_multiple_bays(warehouse, items)
  bays_sorted = sort_bays_by_distance(order, bays)
  return bays_sorted
end
