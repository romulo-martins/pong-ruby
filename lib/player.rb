require 'gosu'
require_relative 'pong'

class Player
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
    @middle_tile = Pong::TILE/2
  end

  def update; end

  def draw
    (0..@middle_tile).each do |y|
        Gosu.draw_rect(
          @x * Pong::TILE,
          (@y - y) * Pong::TILE,
          Pong::TILE,
          Pong::TILE,
          Gosu::Color::WHITE
        )
    end
  end

  def up;   @y -= @middle_tile; end
  def down; @y += @middle_tile; end
end
