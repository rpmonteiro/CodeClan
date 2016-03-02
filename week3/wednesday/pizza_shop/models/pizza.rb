require 'pg'

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

  def save
    db = PG.connect( {dbname: 'pizza_shop', host: 'localhost'} )
    sql = "INSERT INTO pizzas (
    first_name,
    last_name,
    pizza_type,
    quantity ) VALUES (
      '#{@first_name}',
      '#{@last_name}',
      '#{@pizza_type}',
      #{@quantity}
    )"
    db.exec(sql)
    db.close
  end

  def self.all
    db = PG.connect( {dbname: 'pizza_shop', host: 'localhost'} )
    sql = 'SELECT * FROM pizzas'
    pizzas = db.exec(sql)
    result = pizzas.map { |pizza| Pizza.new( pizza ) }
    db.close
    return  result
  end

end
