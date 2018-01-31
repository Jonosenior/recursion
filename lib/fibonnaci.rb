def fibs(uptothisnum)
    return [] if uptothisnum == 0
    return [0] if uptothisnum == 1
    arr = [0,1]
    (uptothisnum-2).times { arr.push(arr[-1] + arr[-2]) }
    arr
end

def find_fibonacci(num)
  if num == 0 || num == 1
    return num
  else
     find_fibonacci(num - 1) + find_fibonacci(num - 2)
  end
end

def fibs_rec(ary, num)
  return [] if num == 0
  return [0] if num == 1
  ary.push(0,1) if ary.empty?
  return ary if num == 2
  ary.push(ary[-1] + ary[-2])
  fibs_rec( ary, num-1 )
  ary
end
