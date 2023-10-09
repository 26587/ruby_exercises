def stock_picker(arr)
  min_value = arr.min
  max_value = arr.max  
  min_position = arr.index(min_value)
  max_position = arr.index(max_value)
  if (min_position < max_position)
    return [min_position, max_position]
  elsif (max_position == 0)
    new_arr = arr - [max_value]
    max_value = new_arr.max
    max_position = arr.index(max_value)
  end
  
  new_min_value = arr[0...max_position].min
  min_position = arr.index(new_min_value)
  return [min_position, max_position]  
end

arr = [17,3,6,9,15,8,6,1,10]
stock_picker(arr)
