var maximumDifference = function(nums) {
    let minI = Number.POSITIVE_INFINITY;
    let maxDifference = 0
    for (let i = 0; i < nums.length - 1; i++) {
        minI = Math.min(nums[i], minI)
        const j = nums[i + 1]
        maxDifference = Math.max(j - minI, maxDifference)
    }
    return maxDifference > 0 ? maxDifference : -1
};