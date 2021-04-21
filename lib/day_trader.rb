def day_trader(array)
  
  delta = array[1] - array[0]
  days = [0,1]
  j = 0

  array.each_index{|i|
  for i in 0..(array.length-2) do
    for j in (i+1)..(array.length-1) do
      if (array[j] - array[i]) > delta
        delta = array[j] - array[i]
        days = [i,j]
      end
    end

  end
  }

  return days

end

array = [17, 3, 6, 9, 15, 8, 6, 1, 10]

puts day_trader(array)