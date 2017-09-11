while input = gets.chomp do
    case input
    when ""
        puts "Exiting..."
        break
    else
        # puts input
        if input =~ /^PLACE\s+\d+\s*,\s*\d+\s*,\s*(NORTH|SOUTH|EAST|WEST)$/
            input, x, y, direction = input.gsub(',', ' ').split
            puts "x: #{x}"
            puts "y: #{y}"
            puts "direction: #{direction}"
            # PlaceCommand.new(@robot, @table, Position.new(x.to_i, y.to_i, direction))
          elsif input =~ /^MOVE$/
            puts "M: #{input}"
            # MoveCommand.new(@robot, @table)
          elsif input =~ /^LEFT$/
            puts "L: #{input}"
            # LeftCommand.new(@robot)
          elsif input =~ /^RIGHT$/
            puts "R: #{input}"
            # RightCommand.new(@robot)
          elsif input =~ /^REPORT$/
            puts "Rpt: #{input}"
            # ReportCommand.new(@robot)
          end
    end
end