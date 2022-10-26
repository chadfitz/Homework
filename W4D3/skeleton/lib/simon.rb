class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until game_over == true
    game_over_message
    reset_game
  end

  def take_turn
    if game_over == false
      show_sequence
      require_sequence
      # if require_sequence == show_sequence
    end
    round_success_message
    @sequence_length += 1
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    puts "Repeat the sequence by entering the first letter of each color on a new line."
    @seq.each do |color|
      input = gets.chomp
      if color[0] != user_color
        return @game_over = true
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    "SUCCESS"
  end

  def game_over_message
    "GAME OVER"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
