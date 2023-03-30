def first_anagram?(str1, str2) #generate and store all the possible anagrams of the first string.
    permutations = str1.chars.permutation(str1.length).to_a
    permutations = permutations.map { |ele| ele.join }
    permutations.include?(str2)
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

#Phase II - 0(n^2)

#Phase III - 0(n^2) or O(nlogn) (Entirely dependent on sort method)

#Phase IV - 0(4n) if hash1 == hash2 is O(n)
            #0(3n) if one hash