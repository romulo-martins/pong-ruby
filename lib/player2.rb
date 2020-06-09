require 'gosu'
require_relative 'pong'

class Player2
  attr_accessor :x, :y

  def initialize
    @y = 10
    @x = (Pong::WIDTH / Pong::TILE) - 2
  end

  def update
  end

  def draw
    (0..5).each do |y|
        Gosu.draw_rect(
          @x * Pong::TILE,
          (@y - y) * Pong::TILE,
          Pong::TILE,
          Pong::TILE,
          Gosu::Color::WHITE
        )
    end
  end

  def up;   @y -= Pong::TILE/2;  end
  def down; @y += Pong::TILE/2;  end
end
