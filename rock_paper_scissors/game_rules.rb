# require "./ai"
# require "./player"

class GameRules
  def initialize
    @player = Player.new
    @ai = Ai.new
  end

  PLAYER_VS_AI_RULES = {
    "R" => { "R" => "Player ties AI", "P" => "Player wins", "S" => "AI wins" },
    "P" => { "R" => "AI wins", "P" => "Player ties AI", "S" => "Player wins" },
    "S" => { "R" => "Player wins", "P" => "AI wins", "S" => "Player ties AI" }
  }

  def initialize
    determine_winner
  end

  private

  def determine_winner(player_turn)
    PLAYER_VS_AI_RULES[player_turn][@ai.turn]
  end
end

# GameRules.new.determine_winner
