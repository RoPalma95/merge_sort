def merge_sort(arr)
  return arr if arr.length < 2

  merged = []

  if arr.length >= 2
    lh = arr.slice(0, arr.length/2)
    rh = arr.slice(arr.length/2, arr.length)
    sorted_lh = merge_sort(lh)
    sorted_rh = merge_sort(rh)
    

    until sorted_lh.empty?
      index = 0
      if sorted_rh.empty? || sorted_lh[index] < sorted_rh[index]
        merged << sorted_lh.shift
      else
        merged << sorted_rh.shift
      end
      index += 1
    end
    merged << sorted_rh unless sorted_rh.empty?
  end
  merged.flatten
end

p merge_sort([31,53,99,6,89,28,30,73,5,25,3,78,96,79,76])
p [31,53,99,6,89,28,30,73,5,25,3,78,96,79,76].sort