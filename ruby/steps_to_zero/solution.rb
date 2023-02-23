# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
    steps = 0
    while num > 0
        num % 2 > 0 ? num -= 1 : num /= 2
        steps += 1
    end
    steps
end