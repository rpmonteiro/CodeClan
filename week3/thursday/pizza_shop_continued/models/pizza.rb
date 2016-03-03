require 'pg'

class Pizza
  attr_reader :first_name, :last_name, :pizza_type, :quantity, :id

  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @pizza_type = options['pizza_type']
    @quantity = options['quantity'].to_i
    @id = nil || options['id']
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
    db = PG.connect(dbname: 'pizza_shop', host: 'localhost')
    pizzas = db.exec('SELECT * FROM pizzas')
    result = pizzas.map { |pizza| Pizza.new(pizza) }
    db.close
    result
  end

  def self.find(id)
    db = PG.connect(dbname: 'pizza_shop', host: 'localhost')
    order = db.exec("SELECT * FROM pizzas WHERE id=#{id}")
    result = Pizza.new(order[0])
    db.close
    result
  end
end
