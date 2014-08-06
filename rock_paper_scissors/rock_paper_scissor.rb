require "./game_rules"

class RockPaperScissor
  def initialize
    @game_rules = GameRules.new
  end

  def play
    @game_rules.implement_rules
  end
end

RockPaperScissor.new.play
