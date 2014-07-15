class Pokr
  def initialize(number_of_players)
    @deck = []
    @number_of_players = number_of_players
    @shuffled_deck = []
  end

  def play
    create_deck
    shuffle_deck
    deal_five_cards_to_each_player
    # display_each_players_hand
  end

  private

  def create_deck
    # faces = %w{2 3 4 5 6 7 8 9 T J Q K A}.to_s
    # suits = %w{H C S D}.to_s
    # deck = []
    # hearts = faces.map { |face| face + "H" }
    hearts = %w{2H 3H 4H 5H 6H 7H 8H 9H TH JH QH KH AH}
    diamonds = %w{2D 3D 4D 4D 6D 7D 8D 9D TD JD QD KD AD}
    clubs = %w{2C 3C 4C 5C 6C 7C 8C 9C TC JC QC KC AC}
    spades = %w{2S 3S 4S 5S 6S 7S 8S 9S TS JS QS KS AS}
    @deck = hearts << diamonds << clubs << spades
  end

  def shuffle_deck
    @shuffled_deck = @deck.flatten.shuffle!
  end

  def deal_five_cards_to_each_player
    dealt_hands = @number_of_players.times.map do
      @shuffled_deck.sample(5)
    end
    puts dealt_hands
  end
end

game = Pokr.new(3)
game.play
