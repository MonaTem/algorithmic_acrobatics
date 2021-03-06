# Problem source https://leetcode.com/problems/permutations/description/
# A permutation is a possible arrangement of ALL the elements in a given collection.
# Each permutation is the same size as the original collection that is being permuted

# Carried state: results array, current_solution
# dead-end logic: if current_solution has 3 elements dont go further
# Skip number if current solution has number already


def permute(nums)
  result = []
  permute_helper(nums, result, [])
  result
end

def permute_helper(nums, result, solution)
  if solution.size == nums.size
    result << solution.clone
  else

    nums.each do |num|
        next if solution.include?(num)
        solution << num

        permute_helper(nums, result, solution)
        solution.pop
    end
  end
end
