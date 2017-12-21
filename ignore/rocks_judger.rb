def rock_judger(rocks_arr)
    if rocks_arr.length <= 2  # the base case
      a = rocks_arr[0]
      b = rocks_arr[-1]
      print "a1: #{a}\n"
      print "b1: #{b}\n"
    else
      a = rock_judger(rocks_arr.slice!(0,rocks_arr.length/2))
      b = rock_judger(rocks_arr)
      print "a2: #{a}\n"
      print "b2: #{b}\n"
    end

    return a > b ? a : b
end


rocks = 30.times.map{rand(200) + 1}
#rocks = [12, 3 , 10]
puts rocks.join(', ')
puts "Heaviest rock is: #{rock_judger(rocks)}"


=begin

line 8 cuts the array in half, and assigns first half to a, then passes a to rock_judger
  Rock_judger then breaks a array in half again, passing each half to rock_judger
  ... [repeat above]
  Finally, it reaches an array of only 2 elements. it then assigns element 0 to a, and element 1 to b

line 9 assigns second half of the array to b, then passes b to rock judger



Rock judger keeps breaking down the arrays into smaller pieces, until

If a > b then return a; if b < a then return b.

When the array is only


=end
