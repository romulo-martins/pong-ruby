require 'gosu'
require_relative 'ball'
require_relative 'player1'
require_relative 'player2'

class Pong < Gosu::Window
  WIDTH  = 640
  HEIGHT = 480
  TILE   = 10

  WIDTH_IN_TILE = WIDTH / TILE

  def initialize
    super WIDTH, HEIGHT, false, 1000 / 10

    @ball = Ball.new
    @player1 = Player1.new 
    @player2 = Player2.new
  end 

  def update
    # @ball.update
    @player1.update
    @player2.update
  end

  def draw
    @ball.draw
    @player1.draw
    @player2.draw
  end 

  def button_down(id)
    case id
    when Gosu::KbW      then @player1.up
    when Gosu::KbS      then @player1.down
    when Gosu::KbUp     then @player2.up
    when Gosu::KbDown   then @player2.down
    when Gosu::KbEscape then exit
    end
  end
end 
