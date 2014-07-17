class Ai
  POSSIBLE_MOVES = %w(R P S)

  attr_reader :move

  def turn
    @move = POSSIBLE_MOVES.sample
  end
end
