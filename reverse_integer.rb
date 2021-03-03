#Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

#Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

def reverse(x)
  if x.negative?
    # 判斷 x 是否為負數
    x = (x.to_s.reverse.to_i) * -1
    # 如果是就把結果乘 -1 變負數
  else
    x = x.to_s.reverse.to_i
    # 不是的話直接計算
  end
  x.bit_length > 31 ? 0 : x
  # 判斷超過 32 bit 回傳 0 (不然會爆掉)，沒超過就回傳 x
end
