# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  min = 0
  # 設定最小值為 0
  max = nums.size - 1
  # 設定最大值為陣列數減一(因為兩個數 taget 才有插入點)

  while max >= min
    # 當最大值大於等於最小值
    mid = min + (max-min) / 2
    # 算出中間點，並加上條件，避免無窮迴圈
    return mid if target == nums[mid]
    # 回傳 mid 的值如果 target 等於 陣列 mid 的值
    if target > nums[mid]
      # 如果 target 大於陣列 mid 值
      min = mid + 1
      # min 等於 mid 加一
    else
      max = mid - 1
      # 小於的話 max 等於 mid 減一
    end
  end
  min
  # 回傳 mim
end

# 使用 B TREE(binary search tree)的概念，將排列好的陣列由中心點切成兩個區塊
# 去比對哪個區塊符合 target 的值，如果符合就回傳，如果不符合就繼續切區塊，直到比對到為止
# 好處是在資料多的時候減少搜尋時間，不用去比對每個元素
