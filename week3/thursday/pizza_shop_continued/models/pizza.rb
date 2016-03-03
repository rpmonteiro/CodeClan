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
    Pizza.run_sql(sql)
  end

  def self.all
    pizzas = Pizza.run_sql('SELECT * FROM pizzas')
    result = pizzas.map { |pizza| Pizza.new(pizza) }
    result
  end

  def self.find(id)
    pizza = Pizza.run_sql("SELECT * FROM pizzas WHERE id=#{id}")
    result = Pizza.new(pizza[0])
    result
  end

  def self.update(options)
    sql = "UPDATE pizzas SET
    first_name='#{options['first_name']}',
    last_name='#{options['last_name']}',
    pizza_type='#{options['pizza_type']}',
    quantity='#{options['quantity']}'
    WHERE id='#{options['id']}'"
    Pizza.run_sql(sql)
  end

  def self.destroy(id)
    sql = "DELETE FROM pizzas WHERE id=#{id}"
    Pizza.run_sql(sql)
  end

  def self.run_sql(sql)
    begin
      db = PG.connect(dbname: 'pizza_shop', host: 'localhost')
      result = db.exec(sql)
      return result
    ensure
      db.close
    end
  end
end
