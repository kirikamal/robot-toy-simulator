class Command

    def initialize(robot, table)
        @robot = robot
        @table = table
    end


    # Commands
    def left_command
        if @robot.is_placed?
            @robot.current_position = Position.new(@robot.current_position.x_position, @robot.current_position.y_position,
                                                    @robot.current_position.turn_left)
        end
    end

    def right_command
        if @robot.is_placed?
            @robot.current_position = Position.new(@robot.current_position.x_position, @robot.current_position.y_position,
                                                    @robot.current_position.turn_right)
        end
    end

    def move_command
        if @robot.is_placed?
            new_position = @robot.current_position.goto(@robot.current_position.direction)
            @robot.current_position = new_position if @table.is_valid_position?(new_position)
        end
    end

    def report_command
        if @robot.is_placed?
            puts "#{@robot.current_position.x_position}," "#{@robot.current_position.y_position}," "#{@robot.current_position.direction}" 
        else
            puts "Something went wrong...."
        end        
    end
end