class Pizza
  attr_reader :first_name, :last_name, :pizza_type, :quantity

  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @pizza_type = options['pizza_type']
    @quantity = options['quantity'].to_i
  end

  def full_name
    @first_name + ' ' + last_name
  end

  def total
    @quantity * 10
  end
end
