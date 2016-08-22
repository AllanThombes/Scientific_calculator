require "../lib/scientific_calc/version"

class Calc
  @@result = 0

  def self.basics(operation)
      case operation[1]
        when "+"
          then @@result = operation[0] + operation[2]
        when "-"
          then @@result = operation[0] - operation[2]
        when "*"
          then @@result = operation[0] * operation[2]
        when "/"
          then @@result = operation[0] / operation[2]
        when "mod"
          then @@result = operation[0] % operation[2]
        when "^"
          then @@result = operation[0] ** operation[2]
      end
      p @@result
  end
end

# ve wait operation from the user
puts "Enter your calc: (type exit to quit)"
command = gets
while command.chomp != "exit" do

  # we split the user's entry with spaces
  operation = command.chomp.split(" ")
  if operation.length == 3
      operation[0] = operation[0].to_f
      operation[2] = operation[2].to_f
      Calc.basics(operation)
  end

  # we wait the next operation
  command = gets
end

# module ScientificCalc
#   # Your code goes here...
# end
