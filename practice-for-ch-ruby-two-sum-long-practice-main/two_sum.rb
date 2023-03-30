def two_sum?(arr,target) #O(n^2)
    arr.each_with_index do |num1, idx1|
        arr.each_with_index do |num2, idx2|
            if idx1 != idx2
                return true if num1 + num2 == target
            end
        end
    end
    false
end

def quick_sort(arr)
    return arr if arr.length < 2

    first = arr.shift
    left = arr.select {|el| el < first}
    right = arr.select {|el| el >= first}
    quick_sort(left) + [first] + quick_sort(right)
end

def binary_search(arr,target)
    return false if arr.empty?

    mid_idx = arr.length / 2
    mid = arr[mid_idx]
    return true if mid == target

    return binary_search(arr.take(mid_idx), target) if mid > target
    return binary_search(arr.drop(mid_idx + 1), target) if mid < target
    
end

def okay_two_sum?(arr,target)
    sorted = quick_sort(arr)
    until sorted.empty?
        sum = target - sorted.shift
        return true if binary_search(sorted,sum)
    end
    false

end

p arr = [0, 1, 5, 7, 15, 20, 23].shuffle
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 26) # => should be false
# p sorted_array = quick_sort(arr)
# p binary_search(sorted_array, 24)