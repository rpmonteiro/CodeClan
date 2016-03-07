require_relative('../models/player.rb')
require 'pg'

class Team

  attr_reader :name, :manager, :robes, :id

  def initialize(options)
    @name = options['name']
    @manager = options['manager']
    @robes = options['robes']
    @id = options['id']
  end

end