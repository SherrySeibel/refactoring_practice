require "./player_vs_ai"

class GameRules
  def initialize
    @player = Player.new
    @ai = Ai.new
    @player_vs_ai = PlayerVsAi.new
  end

  def implement_rules
    game_loop
  end

  private

  def game_loop
    loop do
      player_turn = display_prompt

      if player_turn == "Q"
        break
      else
        ai_turn = randomized_ai_move
        @player_vs_ai.determine_winner(player_turn, ai_turn)
      end
    end
  end

  def display_prompt
    print "Your move? (R/P/S or q to quit) > "
    @player.turn
  end

  def randomized_ai_move
    ai_turn = @ai.turn
    puts "AI played #{ai_turn}"
    ai_turn
  end
end
