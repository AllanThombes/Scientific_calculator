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
        else
          return puts "Operation not recognized (type `help` if youy are lost)"
      end
      p @@result
  end
  # function which do the basical operations
  def self.advanced(operation)
      # we convert the second operand to float
      operation[1] = operation[1].to_f
      case operation[0]
        when "cos"
          then @@result = Math::cos(operation[1])
        when "tan"
          then @@result = Math::tan(operation[1])
        when "sin"
          then @@result = Math::sin(operation[1])
        when "log"
          then @@result = Math::log(operation[1])
        when "exp"
          then @@result = Math::exp(operation[1])
        when "base"
          then
          begin
             return puts @@result.to_i.to_s(operation[1])
          rescue
            return puts "Operation not recognized (type `help` if youy are lost)"
          end
        else
          return puts "Operation not recognized (type `help` if youy are lost)"
      end
      p @@result
  end

  def self.help
    puts "Operations must be written like this: "
    puts "ex: 1 + 1"
    puts "Or like this: "
    puts "ex: cos 3"
    puts "Oparators recognized are: "
    puts " `+` `-` `*` `/` `mod` `^` `cos` `sin` `tan` `log` `exp` `base`"
    puts "Type `exit` to quit"
  end
end


# module ScientificCalc
#   # Your code goes here...
# end
