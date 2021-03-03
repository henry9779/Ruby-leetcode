#Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

#You may assume that each input would have exactly one solution, and you may not use the same element twice.

#You can return the answer in any order.

def two_sum(nums, target)
  checked = {}
  # 先定義一個空 hash
  nums.each_with_index do |val, i|
    # 將 hash 的每個值加上 index
    diff = target - val
    # 判斷 target 扣掉值之後存到 diff
    if checked[diff]
      # 如果 hash 的值符合 diff
      return [checked[diff], i]
      # 以陣列方式回傳符合值的 index
    else
      checked[val] = i
      # 如果沒有就以 hash 方式存到 checked {1=>0, 6=>1, 9=>2}
    end
  end
end
