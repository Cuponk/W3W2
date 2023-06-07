require_relative "board"

class Game
    def initialize
        @board = Board.new
        @player = Player.new
    end

    def game_over?
        @board.won?
    end

    def print
        @board.render
    end

   def play_round
    
   end
end