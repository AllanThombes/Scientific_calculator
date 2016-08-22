require "../lib/scientific_calc/version"

class Calc
  @@result = 0

  # function which do the basical operations
  def self.basics(operation)
      # we convert the first and last operand to float
      operation[0] = operation[0].to_f
      operation[2] = operation[2].to_f
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


# module ScientificCalc
#   # Your code goes here...
# end
