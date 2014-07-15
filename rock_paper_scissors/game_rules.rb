class GameRules
  def initialize
    @ai_move = %w{R P S}.sample
    @players_move = ""
  end

  def tied_game
    if @players_move == @ai_move
      puts "Player ties AI"
    end
  end

  def player_victory
    if @players_move == "R" && @ai_move == "S"
      puts "Playere wins"
    elsif @players_move == "S" && @ai_move == "P"
      puts "Player wins"
    elsif @players_move == "P" && @ai_move == "R"
      puts "Player wins"
    end
  end

  def ai_victory
    if @players_move  == "P" && @ai_move == "S"
      puts "AI wins"
    elsif @players_move == "R" && @ai_move == "P"
      puts "AI wins"
    elsif @players_move == "S" && @ai_move == "R"
      puts "AI wins"
    end
  end
end
