class Position
    attr_accessor :x_position, :y_position, :direction

    def initialize(x_position, y_position, direction)
        @x_position = x_position
        @y_position = y_position
        @direction = direction
    end

    def goto(direction)
        case direction
        when "NORTH"
            Position.new(@x_position, @y_position+1, @direction)
        when "EAST"
            Position.new(@x_position+1, @y_position, @direction)
        when "WEST"
            Position.new(@x_position-1, @y_position, @direction)
        when "SOUTH"
            Position.new(@x_position, @y_position-1, @direction)
        end
    end

end