# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    running_array = []
    nums.each_with_index do |num, i|
        i == 0 ? running_array << num : running_array.push(num + running_array[i - 1])
    end
    running_array
end