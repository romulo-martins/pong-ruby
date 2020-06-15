require 'gosu'
require_relative 'pong'

class Ball < Gosu::Window
  attr_accessor :x, :y

  def initialize
    @x = 15
    @y = 15

    @vel_x = generate_pos
    @vel_y = generate_pos
  end

  def update
    @x += @vel_x
    @y += @vel_y

    if @y >= Pong::HEIGHT_IN_TILE || @y <= 0
      @vel_y *= -1
    end

    if @x >= Pong::WIDTH_IN_TILE || @x <= 0
      @x, @y = 15, 15
    end
  end

  def colide player
    player.pos.include?([@x, @y])
  end

  def change_direction
    @vel_x *= -1
    @vel_y *= -1 
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

  def generate_pos
    [-1, 1][rand(0..1)]
  end
end 
