# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    total = nums.reduce(:+)
    left_sum = 0
    nums.each_with_index do |num, i|
        right_sum = total - left_sum - num
        return i if (right_sum == left_sum)
        left_sum = left_sum + num
    end
    -1
end