# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  nums.delete_if{ |n| n == val }
  # 刪除 n 元素如果 n 等於 val
  nums.size
  # 回傳 nums 長度，使用 size 如果資料有被讀取過就不會再次查詢
end

# remove_element([1, 3, 3, 1, 5, 6, 6, 6], 6)
