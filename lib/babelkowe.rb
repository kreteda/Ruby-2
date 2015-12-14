def babelkowe(array)
  if array.empty?
    return raise 'Pusta tablica'
  else
    array_to_rev = Array.new

    for j in 0...array.length
      for i in 1...array.length
        if array[i] < array[i-1]
          temp = array[i]
          array[i] = array[i-1]
          array[i-1] = temp
          i = i + 1
        else
          i = i + 1
        end
      end
      array_to_rev << array.last
      array.delete_at(array.length-1)
      j = j + 1
    end
  end
  return array_to_rev.reverse
end
