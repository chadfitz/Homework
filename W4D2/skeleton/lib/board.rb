

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, i|
      if i != 6 && i != 13
        4.times {cup << :stone}
      end
      # next if i == 6 || i == 13
      # 4.times {cup << :stone}
    end
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 12
      raise 'Invalid starting cup'
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    start_cup = @cups[start_pos]
    @cups[start_pos] = []

    idx = start_pos
    until start_cup.empty?
      idx += 1
      idx = 0 if idx > 13
      if idx == 6
        @cups[6] << start_cup.pop if current_player_name == @name1
      elsif idx == 13
        @cups[13] << start_cup.pop if current_player_name == @name2
      else
        @cups[idx] << start_cup.pop
      end
    end

    render
    next_turn(idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13 
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else 
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?(&:empty?) || @cups[7..12].all?(&:empty?)
  end

  def winner
    return :draw if @cups[6] == @cups[13]

    if @cups[6].count > @cups[13].count
      return @name1
    else
      return @name2
    end
  end
end
