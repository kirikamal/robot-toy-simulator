require_relative 'lib/table'
require_relative 'lib/robot'
require_relative 'lib/command'
require_relative 'lib/position'
require_relative 'lib/place'


table = Table.new(5, 5)
robot = Robot.new
command = Command.new(robot, table)

while input = gets.chomp do
    case input
    when ""
        puts "Program Exiting..."
        break
    else
        # puts input
        if input =~ /^PLACE\s+\d+\s*,\s*\d+\s*,\s*(NORTH|SOUTH|EAST|WEST)$/
            input, x, y, direction = input.gsub(',', ' ').split
            position = Position.new(x.to_i, y.to_i, direction)
            place = Place.new(robot, table, position)            
            place.place_command
          elsif input =~ /^MOVE$/
            command.move_command
          elsif input =~ /^LEFT$/
            command.left_command
          elsif input =~ /^RIGHT$/
            command.right_command
          elsif input =~ /^REPORT$/
            command.report_command
          end
    end
end