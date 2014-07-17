require "./ai"
require "./player"

class RockPaperScissor
  def initialize
    @ai = Ai.new
    @player = Player.new
  end

  PLAYER_VS_AI_RULES = {
    "R" => { "R" => "Player ties AI", "P" => "Player wins", "S" => "AI wins" },
    "P" => { "R" => "AI wins", "P" => "Player ties AI", "S" => "Player wins" },
    "S" => { "R" => "Player wins", "P" => "AI wins", "S" => "Player ties AI" }
  }

  def play
    game_loop
  end

  private

  def game_loop
    loop do
      display_prompt
      turn = @player.turn

      if turn == "Q"
        break
      else
        randomized_ai_move
        determine_winner(turn)
      end
    end
  end

  def display_prompt
    print "Your move? (R/P/S or q to quit) > "
  end

  def randomized_ai_move
    puts "AI played #{@ai.turn}"
  end

  def determine_winner(player_turn)
    # puts PLAYER_VS_AI_RULES[@player.turn]
    # p @player.turn
    puts PLAYER_VS_AI_RULES[player_turn][@ai.turn]
  end
end

RockPaperScissor.new.play
