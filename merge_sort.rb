# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length < 2

  merged = []

  if arr.length >= 2
    lh = arr.slice(0, arr.length / 2)
    rh = arr.slice(arr.length / 2, arr.length)
    sorted_lh = merge_sort(lh)
    sorted_rh = merge_sort(rh)

    until sorted_lh.empty?
      merged << (sorted_rh.empty? || sorted_lh.first < sorted_rh.first ? sorted_lh.shift : sorted_rh.shift)
    end
    merged << sorted_rh unless sorted_rh.empty?
  end
  merged.flatten
end

# example 50-item array to test the #merge_sort method

example = []
50.times do
  example.push(rand(100))
end

# check if #merge_sort method produces same results as Array#sort

p merge_sort(example) == example.sort
