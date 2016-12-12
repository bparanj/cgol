class Location
  attr_reader :x, :y
  
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  NORTHWEST = new(-1, 1)
  NORTHEAST = new(1, 1)
  SOUTHWEST = new(-1, -1)
  SOUTHEAST = new(1, -1)
  CENTER    = new(0, 0)
  NORTH     = new(0, 1)
  SOUTH     = new(0, -1)
  EAST      = new(1, 0)
  WEST      = new(-1, 0)
  
  OFFSETS = [NORTHWEST, NORTHEAST, SOUTHWEST, SOUTHEAST, NORTH, SOUTH, EAST, WEST]
      
  def ==(other)
    @x == other.x && @y == other.y
  end
  
  def +(other)
    Location.new(@x+other.x, @y+other.y)
  end
end
