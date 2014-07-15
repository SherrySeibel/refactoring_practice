=begin

print hands for each player
print higest hand
print which card is the high card

=end
require "./deck"

class Poker
  def initialize(number_of_players)
    @deck = Deck.new
    @number_of_players = number_of_players
    @dealt_hands = []
  end

  def play
    deal_five_cards_to_each_player
    display_each_players_hand
    # show_players_best_outcome
  end

  private

  def deal_five_cards_to_each_player
    number_of_players = 0
    @dealt_hands = @number_of_players.times.map do
      @deck.deal_five_cards
    end
  end

  def display_each_players_hand
    puts @dealt_hands
  end

  # def show_players_best_outcome
  # end
end

game = Poker.new(4)
game.play
