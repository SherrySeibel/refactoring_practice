require "./game_rules"

class RockPaperScissor
  def initialize
    @ai_move = %w{R P S}.sample
    @players_move = ""
  end

  def play
    game_loop
  end

  private

  def game_loop
    loop do
      display_prompt_and_get_players_move
      if @players_move == "Q"
        break
      else
        puts "AI played #{@ai_move}"
      end
      @game_rules = GameRules.new
      @game_rules.tied_game
      @game_rules.player_victory
      @game_rules.ai_victory
    end
  end

  def display_prompt_and_get_players_move
    print "Your move? (R/P/S or q to quit) > "
    @players_move = gets.chomp.upcase
  end
end

RockPaperScissor.new.play
