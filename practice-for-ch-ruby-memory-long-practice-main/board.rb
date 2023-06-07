require_relative "player"
require_relative "ai"
require_relative "card"
class Board

    

    def initialize
        @board = Array.new(4) {Array.new(4, Card.new)}
        @player = Player.new
        @ai = AI.new
        @move = @player.get_move
        @hide = Array.new(4) {Array.new(4)}
    end 

    def [](pos)
        @board[pos[0]][pos[1]]
    end

    def []=(pos, val)
        @board[pos[0]][pos[1]] = val
    end

    def render
        @hide.each do |row|
            puts row
        end
    end

    def little_won?
       if @board[@first_move] == @board[@second_move]
        @hide[@first_move] += @board[@first_move]
        @hide[@second_move] += @board[@second_move]
        return true 
       end
    end

    def won?
        !@hide.empty?        
    end

    def reveal(pos)
        if !already_chosen(pos)
        show_pos_board = @hide.map{|ele| ele}
        show_pos_board[pos[0]][pos[1]] = @hide[pos]
        show_pos_board
        end
    end

    def already_chosen(pos)
        @hide.empty?(pos)
    end

end