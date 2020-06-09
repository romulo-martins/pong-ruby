require 'gosu'
require_relative 'pong'

class Ball < Gosu::Window
  attr_accessor :x, :y

  def initialize
    @x = 15
    @y = 15

    @vel_x = generate_position
    @vel_y = 0
  end

  def update
    @x += @vel_x
    @y += @vel_y
  end

  def colide player
    # TODO: 
  end

  def change_direction
    # TODO: 
  end

  def draw
    Gosu.draw_rect(
      @x * Pong::TILE,
      @y * Pong::TILE,
      Pong::TILE,
      Pong::TILE,
      Gosu::Color::WHITE
    )
  end 

  private 

  def generate_position
    [-1, 1][rand(0..1)]
  end
end 
