def merge_sort(array)
  if array.length == 1
    return array
  else
    # Splitting into Left and Right
    left = merge_sort(array.slice(0, ((array.length)/2)))
    right = merge_sort(array.slice((array.length)/2..-1))

    # Comparing and merging the Left and Right Array
    temp_array = []
    # Until one array runs out of elements
    until left.length == 0 || right.length == 0
      if left[0] > right[0]
        temp_array << right[0]
        right.shift
      elsif right[0] > left[0]
        temp_array << left[0]
        left.shift
      end
    end

    # Concat the remaining array into new array
    if left.length > 0
      temp_array.concat(left)
    else
      temp_array.concat(right)
    end

    # Returning the newly merged array
    return temp_array
  end
end