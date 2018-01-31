def merge_sort(input, result=[])
  if input.length < 2
    return input
  else
    arr1 = merge_sort(input.slice!(0, input.length/2), result)
    arr2 = merge_sort(input, result)
    result = combine_two_arrays(arr1, arr2)
  end
  result
end


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

# Example on an unsorted array
print merge_sort([4,14,3,1,61,5,2,10,9,4,6,])
