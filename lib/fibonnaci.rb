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
  #if num<=2 then return ary[num] end
  return [] if num == 0
  return [0] if num == 1
  ary.push(0,1) if ary.empty?
  return ary if num == 2
  ary.push(ary[-1] + ary[-2])
  fibs_rec( ary, num-1 )
  ary
end



 #
 # print fibs(0)
 # print fibs(1)
 # print fibs(2)
 # print fibs(3)
 # print fibs(4)
 # print fibs(5)
 # print fibs(6)
 #
 #
 # print fibs(10)


 print fibs_rec([], 0)
 print fibs_rec([], 1)
 print fibs_rec([], 2)
 print fibs_rec([], 3)
 print fibs_rec([], 4)
 print fibs_rec([], 10)


 # print fibs_rec(ary, 2)
 # print fibs_rec(ary, 3)
 # print fibs_rec(ary, 4)



# n =	0	1	2	3	4	5	6	7	  8	  9	  10	11	12	13	14	...
# x =	0	1	1	2	3	5	8	13	21	34	55	89	144	233	377
#
# def recursively_create_fibonnaci_sequence(length_of_sequence)
#
# end
#
# recursively_create_fibonnaci_sequence(5)
#
#
# =begin
# # 1. 1123581321
# 1. arr = [1]
# arr.push(arr[-1] + arr[-2])
#
# 1
#
# =end
