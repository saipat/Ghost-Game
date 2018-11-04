require 'set'

class Ghost

  ALPHABETS = Set.new("a".."z")

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2, dictionary)
    @player_1 = player_1
    @player_2 = player_2
    @fragment = ""
    words = File.readLines("dictionary.txt").map(&:chomp)
    @dictionary = Set.new(words)
  end

  def play_round

  end

  def current_palyer
    @current_palyer = player_1
  end

  def previous_player
    @previous_player = @current_palyer == @player_1 ? @player_2 : @player_1
  end

  def switch_player!
    @current_palyer = @current_palyer == @player_1 ? @player_2 : @player_1
  end

  def take_turn(player)

  end

  def valid_play?(string)

  end
end
