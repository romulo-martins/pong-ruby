require 'gosu'
require_relative 'ball'
require_relative 'player'

class Pong < Gosu::Window
  WIDTH  = 640
  HEIGHT = 480
  TILE   = 10

  WIDTH_IN_TILE = (WIDTH / TILE)
  HEIGHT_IN_TILE = (HEIGHT / TILE)

  def initialize
    super WIDTH, HEIGHT, false, 1000 / 15

    @ball = Ball.new
    @player1 = Player.new 1, 10
    @player2 = Player.new WIDTH_IN_TILE - 2, 10
  end 

  def update
    if @ball.colide @player1
      @ball.change_direction
    end

    if @ball.colide @player2
      @ball.change_direction
    end
    
    @ball.update
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
