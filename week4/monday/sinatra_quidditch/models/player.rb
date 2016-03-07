require_relative('./team.rb')
class Player

  attr_reader :name, :team_id, :id

  def initialize(options)
    @name = options['name']
    @team_id = options['team_id']
    @id = options['id']
  end

end