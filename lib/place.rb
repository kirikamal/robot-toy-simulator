class Place

    def initialize(robot, table, position)
        @robot = robot
        @table = table
        @position = position
    end

    def place_command
        if @table.is_valid_position?(@position)
            @robot.current_position = @position
        else
            puts "Invalid position"
            puts ""
        end        
    end
end