require( 'pg' )
require_relative('pokemon')

class Trainer

  attr_reader( :id, :email,:name )

  def initialize( options )
    @id = options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO Trainers (name) VALUES ('#{ @name }')"
    SqlRunner.run_sql( sql )
  end

  def self.all()
    sql = "SELECT * FROM Trainers"
    return Trainer.map_items(sql)
  end

  def self.map_items(sql)
    trainers = SqlRunner.run_sql( sql )
    result = trainers.map { |t| Trainer.new( t ) }
    return result
  end

  def self.map_item(sql)
    result = Trainer.map_items(sql)
    return result.first
  end

end