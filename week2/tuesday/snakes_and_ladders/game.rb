class Game

  attr_reader :board, :current_player

  def initialize(players, board)
    @board = board
    @players = players
    @current_player = players[0]
  end

  def number_of_players
    @players.count
  end

  def update_current_player
    @current_player = @players.rotate![0]
  end

  def next_turn(spaces)
    @current_player.move(spaces)
    modifier = @board.state[@current_player.position]
    @current_player.move(modifier)
    update_current_player
  end

end