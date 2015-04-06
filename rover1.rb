class Rover
    def initialize(x,y,direction)
      @x = x
      @y = y
      @direction = direction
    end

    def process_input(input)
      values = input.split("")
      values.each do |value|
        read_instructions(value)
      end
    end
    # inst.split("").each do |value|

    def read_instructions(value)
      if value == "L"
        turn_left
      elsif value == "R"
        turn_right
      elsif value == "M"
        move
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

my_rover.process_input("MMRMMLMMLMMMMMMMMMM")
puts my_rover

my_rover.move
puts my_rover

my_rover.turn_right
puts my_rover

my_rover.move
puts my_rover

