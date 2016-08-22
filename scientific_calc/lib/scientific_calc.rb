require "../lib/scientific_calc/version"
require 'colorize'

 #
 # Class which contain the calculator functions
class Calc
  @@result = 0

  # function which do the basical operations
  def self.basics(operation)
      # we convert the first and last operand to float
      operation[0] = operation[0].to_f
      operation[2] = operation[2].to_f
      # this table make correspond user input in valid operands
      check_table = { '+' => '+', '-' => '-', '*' => '*', '/' => '/', 'mod' => '%', '^' => '**', '**' => '**' }
      @@result = operation[0].send check_table[operation[1]], operation[2] rescue puts "Operation not recognized (type `help` if youy are lost)".red
      puts "#{@@result}".yellow
  end
  # function which do the advanced operations
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
            return puts "Operation not recognized (type `help` if youy are lost)".red
          end
        else
          return puts "Operation not recognized (type `help` if youy are lost)".red
      end
      puts "#{@@result}".yellow
  end

  def self.help
    puts "Operations must be written like this: ".green
    puts "ex: 1 + 1".green
    puts "Or like this: ".green
    puts "ex: cos 3".green
    puts "Oparators recognized are: ".green
    puts " `+` `-` `*` `/` `mod` `^` `cos` `sin` `tan` `log` `exp` `base`".green
    puts "Type `exit` to quit".green
  end
end
