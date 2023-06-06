require_relative "board"

class Game
    def initialize
        @board = Board.new
    end

    def game_over?
        @board.won?
    end

    def print
        @board.render
    end

   
end