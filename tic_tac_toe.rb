class Game
  attr_accessor :player1, :player2

  def initialize
    @a1 = ' '
    @a2 = ' '
    @a3 = ' '
    @b1 = ' '
    @b2 = ' '
    @b3 = ' '
    @c1 = ' '
    @c2 = ' '
    @c3 = ' '
    @round = 1
    @board = '    1       2      3    ' + "\n" +
             '                         ' + "\n" +
             "A   #{@a1}   |   #{@a2}   |   #{@a3}    " + "\n" +
             '  ------|-------|------- ' + "\n" +
             "B   #{@b1}   |   #{@b2}   |   #{@b3}    " + "\n" +
             '  ------|-------|------- ' + "\n" +
             "C   #{@c1}   |   #{@c2}   |   #{@c3}    "
  end

  def get_choice
    check_round
    puts " #{@current_player} choose your move :"
    @p_choice = gets.chomp.downcase
    validate
  end

  def validate
    case @p_choice
    when 'a1'
      if @a1 == ' '
        @a1 = @symbol
      else
        puts 'Cell is full, pick another'
        get_choice
      end
    when 'a2'
      if @a2 == ' '
        @a2 = @symbol
      else
        puts 'Cell is full, pick another'
        get_choice
      end
    when 'a3'
      if @a3 == ' '
        @a3 = @symbol
      else
        puts 'Cell is full, pick another'
        get_choice
      end
    when 'b1'
      if @b1 == ' '
        @b1 = @symbol
      else
        puts 'Cell is full, pick another'
        get_choice
      end
    when 'b2'
      if @b2 == ' '
        @b2 = @symbol
      else
        puts 'Cell is full, pick another'
        get_choice
      end
    when 'b3'
      if @b3 == ' '
        @b3 = @symbol
      else
        puts 'Cell is full, pick another'
        get_choice
      end
    when 'c1'
      if @c1 == ' '
        @c1 = @symbol
      else
        puts 'Cell is full, pick another'
        get_choice
      end
    when 'c2'
      if @c2 == ' '
        @c2 = @symbol
      else
        puts 'Cell is full, pick another'
        get_choice
      end
    when 'c3'
      if @c3 == ' '
        @c3 = @symbol
      else
        puts 'Cell is full, pick another'
        get_choice
      end
    else
      puts 'Invalid choice, try A1 or a1'
      get_choice
    end
  end

  def check_round
    if @round.odd?
      @current_player = @player1
      @symbol = 'X'
    else
      @current_player = @player2
      @symbol = 'O'
    end
  end

  def player_names
    puts 'Player 1 please type your name : '
    self.player1 = gets.chomp
    puts 'Player 2 please type your name : '
    self.player2 = gets.chomp
  end

  def display_board
    update_board
    puts @board
  end

  def update_board
    @board = '    1       2      3    ' + "\n" +
             '                         ' + "\n" +
             "A   #{@a1}   |   #{@a2}   |   #{@a3}    " + "\n" +
             '  ------|-------|------- ' + "\n" +
             "B   #{@b1}   |   #{@b2}   |   #{@b3}    " + "\n" +
             '  ------|-------|------- ' + "\n" +
             "C   #{@c1}   |   #{@c2}   |   #{@c3}    "
  end

  def win?
    true if (@a1 != ' ' && @a1 == @a2 && @a2 == @a3) ||
            (@b1 != ' ' && @b1 == @b2 && @b2 == @b3) ||
            (@c1 != ' ' && @c1 == @c2 && @c2 == @c3) ||
            (@a1 != ' ' && @a1 == @b1 && @b1 == @c1) ||
            (@a2 != ' ' && @a2 == @b2 && @b2 == @c2) ||
            (@a3 != ' ' && @a3 == @b3 && @b3 == @c3) ||
            (@a1 != ' ' && @a1 == @b2 && @b2 == @c3) ||
            (@a3 != ' ' && @a3 == @b2 && @b2 == @c1)
  end

  def end?
    [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3].none? { |a| a == ' ' }
  end

  def end_game
    if win?
      puts "#{@current_player} wins!!!"
    elsif end?
      puts " Board full, it's a tie!!"
    end
  end

  def play
    player_names
    display_board
    until win? || end?
      get_choice
      system('cls')
      system('clear')
      display_board
      @round += 1
    end
    end_game
  end
end
a = Game.new
a.play
