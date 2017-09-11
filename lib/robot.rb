class Robot
    attr_accessor :current_position

    def initialize
        @current_position = nil
    end

    def is_placed?
        !@current_position.nil?
    end
end