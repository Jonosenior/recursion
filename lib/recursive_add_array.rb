def append ( ary, n )
  ary.push(n)
  return ary if n == 0
  append(ary, n-1)
end

def append2 ( ary, n )
  return ary if n < 0
  0.upto(n) { |i| ary << i}
  ary
end

def reverse_append( ary, n )
  return ary.reverse if n < 0
  ary.push(n)
  reverse_append( ary, n-1 )
end

#print append([], 5)
# print reverse_append([], -1)
# print reverse_append([], 0)
print reverse_append([], 2)
print reverse_append([], 5)
print reverse_append([], -1)
print reverse_append([], 1)

# print append2([], 5)
# print append2([], -1)
# print append2([], 0)
