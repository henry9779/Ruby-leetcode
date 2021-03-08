#Given a sorted array nums, remove the duplicates in-place such that each element appears only once and returns the new length.

#Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.



def remove_duplicates(nums)
  nums.uniq!
  # 用 uniq! 將陣列重複元素刪除並變成新陣列
  nums.size
  # 回傳新陣列的數
end