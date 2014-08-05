require "./ai"
require "./player"

class RockPaperScissor
  def initialize
    @ai = Ai.new
    @player = Player.new
  end

  PLAYER_VS_AI_RULES = {
    "R" => { "R" => "Player ties AI", "P" => "AI wins", "S" => "Player wins" },
    "P" => { "R" => "Player wins", "P" => "Player ties AI", "S" => "AI wins" },
    "S" => { "R" => "AI wins", "P" => "Player wins", "S" => "Player ties AI" }
  }

  def play
    game_loop
  end

  private

  def game_loop
    loop do
      display_prompt
      player_turn = @player.turn

      if player_turn == "Q"
        break
      else
        ai_turn = randomized_ai_move
        determine_winner(player_turn, ai_turn)
      end
    end
  end

  def display_prompt
    print "Your move? (R/P/S or q to quit) > "
  end

  def randomized_ai_move
    ai_turn = @ai.turn
    puts "AI played #{ai_turn}"
    ai_turn
  end

  def determine_winner(player_turn, ai_turn)
    puts PLAYER_VS_AI_RULES[player_turn][ai_turn]
  end
end

RockPaperScissor.new.play
