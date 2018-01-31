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

# Example uses
print combine_two_arrays([1,4,6], [2,3,8])
print combine_two_arrays([1,4,6,10,90,103], [2,3,8,45,101])
