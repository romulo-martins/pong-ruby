require 'gosu'
require_relative 'pong'

class Player
  attr_accessor :x, :y, :pos

  def initialize(x, y)
    @x = x
    @y = y
    @middle_tile = Pong::TILE/2
    
    @pos = load_pos
  end

  def update 
    @pos = load_pos
  end

  def draw
    (0..@middle_tile).each do |t|
        Gosu.draw_rect(
          @x * Pong::TILE,
          (@y - t) * Pong::TILE,
          Pong::TILE,
          Pong::TILE,
          Gosu::Color::WHITE
        )
    end
  end

  def up;   @y -= 2; end
  def down; @y += 2; end

  private 

  def load_pos
    (0..@middle_tile).map do |t|
      [@x, @y-t]
    end
  end
end
