require "./card"
class Deck
  FACES = %w[2 3 4 5 6 7 8 9 T J Q K A]
  SUITS = %w[H C S D]

  def initialize
    @cards = []
    create_deck
    shuffle
    sample
  end

  private

  def create_deck
    SUITS.each do |suit|
      FACES.each do |face|
        card = Card.new(face, suit)
        @cards << card
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def sample
    self.sample(5)
  end

  # def deal
  # end
end

# Deck.create_deck
