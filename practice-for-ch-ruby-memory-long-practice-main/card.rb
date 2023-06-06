class Card
    attr_reader :cards

    def initialize
        @cards = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H']
    end

    def hide
        Array.new(4) {Array.new(4)}
    end
    
end