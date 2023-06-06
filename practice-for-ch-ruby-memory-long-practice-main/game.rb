class Game
    def initialize
        @board = Board.new
        @card = Card.new
    end

    def game_over?
        @board.won?
    end

    def print
        @board.render
    end

    def show_pos
        @first = first
        @second = second
    end
end