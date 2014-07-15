class RockPaperScissor
  def initialize
    @ai_move = %w{R P S}.sample
    @players_move = ""
  end

  def play
    game_rules
    game_loop
  end

  private

  def game_loop
    loop do
      display_prompt_and_get_players_move
      if @players_move == "q"
        break
      else
        puts "AI played #{@ai_move}"
      end
      game_rules
    end
  end

  def display_prompt_and_get_players_move
    print "Your move? (R/P/S or q to quit) > "
    @players_move = gets.chomp
  end

  def game_rules
    if @players_move == @ai_move
      puts "Player ties AI"
    elsif @players_move == "R" && @ai_move == "S"
      puts "Playere wins"
    elsif @players_move  == "P" && @ai_move == "S"
      puts "AI wims"
    elsif @players_move == "R" && @ai_move == "P"
      puts "AI wins"
    elsif @players_move == "S" && @ai_move == "P"
      puts "Player wins"
    elsif @players_move == "P" && @ai_move == "R"
      puts "Player wins"
    elsif @players_move == "S" && @ai_move == "R"
      puts "AI wins"
    end
  end
end

RockPaperScissor.new.play
