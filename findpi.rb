require "bigdecimal/math"
include BigMath
$flag = true

def welcome
    puts "This program calculates pi to any number of digits after the decimal point."
end

def get_precision
    puts "How many digits of pi after the decimal would you like?"
    gets.chomp.to_i
end

def pi(digits_after_decimal)
    result = BigMath.PI(digits_after_decimal)
    result = result.truncate(digits_after_decimal).to_s
    result = result[2..-1]
    result = result.split('e').first
    result = result.insert(1, '.')

    puts result

end

welcome
precision = get_precision
pi(precision)
