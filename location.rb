class Location
  attr_reader :x, :y
  
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  NORTHWEST = Location.new(-1, 1)
  NORTHEAST = Location.new(1, 1)
  SOUTHWEST = Location.new(-1, -1)
  SOUTHEAST = Location.new(1, -1)
  CENTER    = Location.new(0, 0)
  NORTH     = Location.new(0, 1)
  SOUTH     = Location.new(0, -1)
  EAST      = Location.new(1, 0)
  WEST      = Location.new(-1, 0)
  
  OFFSETS = [NORTHWEST, NORTHEAST, SOUTHWEST, SOUTHEAST, NORTH, SOUTH, EAST, WEST]
      
  def ==(other)
    @x == other.x && @y == other.y
  end
  
  def +(other)
    Location.new(@x+other.x, @y+other.y)
  end
end
