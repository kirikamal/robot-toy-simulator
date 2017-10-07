class Position
    attr_accessor :x_position, :y_position, :direction
    DIRECTION_CONST = %w(NORTH EAST SOUTH WEST).freeze

    def initialize(x_position, y_position, direction)
        @x_position = x_position
        @y_position = y_position
        @direction = direction
    end

    def goto(direction)
        case direction
        when "NORTH"
            Position.new(@x_position, @y_position + 1, @direction)
        when "EAST"
            Position.new(@x_position + 1, @y_position, @direction)
        when "WEST"
            Position.new(@x_position - 1, @y_position, @direction)
        when "SOUTH"
            Position.new(@x_position, @y_position - 1, @direction)
        end
    end

    def ==(other)
        @x_position == other.x_position && @y_position == other.y_position && @direction == other.direction
      end
    
    def turn_left
        DIRECTION_CONST[(DIRECTION_CONST.index(direction) - 1) % 4]
    end

    def turn_right
        DIRECTION_CONST[(DIRECTION_CONST.index(direction) + 1) % 4]
    end

end