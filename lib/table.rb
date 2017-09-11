class Table
    def initialize(length, width)
        @length = length
        @width  = width
    end

    def is_valid_position(position)
        position.x_position < @length && position.y_position < @width && 
        position.x_position >= 0 && position.y_position >= 0
    end

end