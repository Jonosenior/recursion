#4 => 10

def sumupto(n)
  return n if n == 1
  return sumupto(n-1) + n
end

puts sumupto(4)
