#Given an integer x, return true if x is palindrome integer.

#An integer is a palindrome when it reads the same backward as forward. For example, 121 is palindrome while 123 is not.

def is_palindrome(x)
  y = x.to_s.reverse.to_i
  # 將引數轉成字串反轉再轉回數字
  if y === x
    # 如果兩者相等(三個等號判斷連同類別也要一樣)
    true
  else
    # 如果兩者不等於
    false
  end
end

def is_palindrome(x)
  reverse_x = x.to_s.reverse.to_i
  reverse_x === x ? true : false
  # 三元運算子寫法
end
