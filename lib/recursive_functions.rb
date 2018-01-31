def valid_palindrome?(str)
  return true if str.length < 2
  return false if str.slice!(0) != str.slice!(-1)
  valid_palindrome?(str)
end

def find_factorial(num)
  return num if num == 1
  num * find_factorial(num-1)
end

def bottles_of_beer(n)
  return "no bottles of beer :(\n" if n == 0
  puts "#{n} bottles of beer on the wall"
  bottles_of_beer(n-1)
end

def find_fib(n)
  return n if n < 2
  find_fib(n-1) + find_fib(n-2)
end

def flatten_array(arr, result=[])
  arr.each do |element|
    (element.kind_of? Array) ? flatten_array(element, result) : result << element
  end
  result
end

roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

def integer_to_roman_numeral(roman_mapping, integer, result=[])
  if integer.to_s.length == 1
    result.push(roman_mapping[integer.to_i])
  else
    integer.to_s.split("").each do |element|
      integer_to_roman_numeral(roman_mapping, element, result)
    end
  end
  result
end
