class Animal < ActiveRecord::Base
  def move
    return 'slither' if !legs || legs == 0
    return 'walk'
  end
end
