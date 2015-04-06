class Rover
    def initialize(x,y,direction)
      @x = x
      @y = y
      @direction = direction
    end

    def read_instructions(value)
      if value == "L"
        turn_left
      elsif value == "R"
        turn_right
      elsif value == "M"
        move_forward
      end
    end

    def move
      if @direction == "N"
        @y += 1
      elsif @direction == "W"
        @x += 1
      elsif @direction == "S"
        @y -= 1
      elsif @direction == "E"
        @x -= 1
      end
    end

    def turn_left
      if @direction == "N"
        @direction == "W"
      elsif @direction == "W"
        @direction == "S"
      elsif @direction == "S"
        @direction == "E"
      elsif @direction == "E"
        @direction == "N"
      end
    end

     def turn_right
      if @direction == "N"
        @direction == "E"
      elsif @direction == "W"
        @direction == "N"
      elsif @direction == "S"
        @direction == "W"
      elsif @direction == "E"
        @direction == "S"
      end
    end

    def to_s
      "I am at #{@x}, #{@y},facing: #{@direction}"
    end
end

my_rover= Rover.new(2,2,"N")
puts my_rover

my_rover.read_instructions("MMRMMLMMLMMMMMMMMMM")
puts my_rover

# my_rover.turn_right
# puts turn_right
# my_rover.turn_left
# puts turn_left

