def combine_two_arrays(arr1, arr2)
  result = []

  until ((arr1.empty?) && (arr2.empty?))
    if arr1[0].nil?
      result += arr2
      return result
    elsif arr2[0].nil?
      result += arr1
      return result
    elsif arr1[0] <= arr2[0]
      result.push(arr1.shift)
    else
      result.push(arr2.shift)
    end
  end
  result

end

# def merge_two_arrays(arr1, arr2)
#   result = []
#   i = 0
#   j = 0
#   5.times do
#     if arr1[i] >= arr2[j]
#         result << arr[i]
#         i+=1
#     else
#       result << arr2[j]
#       j+=1
#     end
#   end
#   result
# end
#
#

print combine_two_arrays([1,4,6], [2,3,8])
print combine_two_arrays([1,4,6,10,90,103], [2,3,8,45,101])
