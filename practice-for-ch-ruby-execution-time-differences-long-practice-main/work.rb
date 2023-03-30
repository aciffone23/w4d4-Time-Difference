list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# O(n^2)
def my_min_list(list)
    # list.each do |ele1| 
    #     return ele1 if list.all?{ |ele2| ele1 <= ele2 } 
    # end
    # o(n)
    min = list[0]
    list.each {|num| min = num if num <= min}
    min
end
p my_min_list(list)
list1 = [2, 3, -6, 7, -6, 7]
list2 = [-5, -1, -3]
list3 = [5, 3, -7]
def sub_sum(list)
    largest = list[0]
    list.each_with_index do |ele1,idx1| 
        list.each_with_index do |ele2,idx2|
            if idx2 >= idx1 
                subarr = list[idx1..idx2] #not O(1) it is O(n)
                largest = subarr.sum if largest <= subarr.sum #O(n)
            end
        end
    end
    largest

    # largest = list[0]
    # list.inject do |acc, ele|
    #     largest = ele if ele > largest
    #     current_sum = acc + ele
    #     if current_sum >= 0
    #         largest = current_sum if current_sum > largest
    #         current_sum
    #     else
    #         0
    #     end
    # end

    largest
end

p sub_sum(list1)
p sub_sum(list2)
p sub_sum(list3)