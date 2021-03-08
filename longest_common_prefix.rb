# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

def longest_common_prefix(strs)
  return '' if strs.empty?
  # 如果引數為空，回傳空字串
  min, max = strs.minmax
  # 用 minmax 在陣列裡用 A-Z 順序排列並抓出第一個值與最後一個值
  idx = min.size.times{ |i| break i if min[i] != max[i] }
  # 判斷如果 min 跟 max 的字不同時，就結束迴圈並定義變數 idx
  min[0...idx]
  # 回傳 min 的字到 idx 前
end
