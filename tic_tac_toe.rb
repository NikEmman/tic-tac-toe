class Game   
    def initialize
      @board = Board.new
    end
    def get_choice
      @board.a1 = "X"
      puts @board
    end
end

class Board
  attr_accessor :a1
    def initialize
      @a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3 =" "

      @board = "    1       2      3    "+"\n"+
               "                         "+"\n"+
               "A   #{@a1}  |   #{@a2}   |   #{@a3}    "+"\n"+
               "  -----|------|------- "+"\n"+
               "B   #{@b1}   |   #{@b2}   |   #{@b3}    "+"\n"+
        
                 "  -----|------|------- "+"\n"+
        
                 "C   #{@c1}   |   #{@c2}   |   #{@c3}    "
      end
      def display
        puts @board
      end
end