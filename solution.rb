class Deck
    attr_reader :cards

    def self.all_cards
        all_cards = []

        Card.ranks.each do |rank|
            Card.suits.each do |suit| 
                all_cards << Card.new(rank, suit)
            end
        end
        all_cards
    end

    def initialize(cards = Deck.all_cards)
        @cards = cards
    end

    def choose_card
        @cards.shift
    end



end



class Card
    attr_reader :rank, :suit

    RANKS = ["A","2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    SUITS = ["Hearts", "Clubs", "Diamonds", "Spades"]
    
    def initialize(suit, rank)
        @suit = suit 
        @rank = rank 
    end

    def self.ranks
        RANKS
    end

    def self.suits 
        SUITS
    end
end
