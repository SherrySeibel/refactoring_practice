require "./ai"
require "./player"

class PlayerVsAi
  PLAYER_VS_AI_RULES = Hash.new(Hash.new("Please type in either R, P, or S"))
  PLAYER_VS_AI_RULES["R"] = { "R" => "Player ties AI", "P" => "AI wins", "S" => "Player wins" }
  PLAYER_VS_AI_RULES["P"] = { "R" => "Player wins", "P" => "Player ties AI", "S" => "AI wins" }
  PLAYER_VS_AI_RULES["S"] = { "R" => "AI wins", "P" => "Player wins", "S" => "Player ties AI" }

  attr_reader :winner

  def determine_winner(player_turn, ai_turn)
    @winner = PLAYER_VS_AI_RULES[player_turn][ai_turn]
    puts @winner
  end
end
