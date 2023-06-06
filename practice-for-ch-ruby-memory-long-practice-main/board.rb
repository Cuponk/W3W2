class Board
    def initialize
        @board = Array.new(4) {Array.new(4)}
        @populate = []
        @player = Player.new
        @ai = AI.new
    end 

    def [](pos)
        @board[pos[0]][pos[1]]
    end

    def []=(pos, val)
        @board[pos[0]][pos[1]] = val
    end

    def populate
        row = rand(0...@board.length)
        col = rand(0...@board.length)
        @populate = 
    end

    def render
        @board.each do |row|
            puts row
        end
    end

    def won?
        return true if 
    end

    def reveal(pos)
        if !already_chosen || !already_shown
            self.[pos]
        end
    end

end