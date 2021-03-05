# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000
# For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

# I can be placed before V (5) and X (10) to make 4 and 9.
# X can be placed before L (50) and C (100) to make 40 and 90.
# C can be placed before D (500) and M (1000) to make 400 and 900.
# Given a roman numeral, convert it to an integer.

def roman_to_int(s)
  hash = {
    'I'=> 1,
    'V'=> 5,
    'X'=> 10,
    'L'=> 50,
    'C'=> 100,
    'D'=> 500,
    'M'=> 1000
  }
  # 先將羅馬字跟相對的值存成 Hash

  total = 0
  index = 0
  # 定義變數為 0
  while s.length > index
    # 當引數長度大於 index 的值執行
    if s.length > index + 1 && hash[s[index + 1]] > hash[s[index]]
      # 當引數長度大於 index + 1 且後面數字大於當前數字
      total += hash[s[index + 1]] - hash[s[index]]
      # 總價加上後面數字減當前數字
      index += 1
      # 設定條件，避免無窮迴圈
    else
      total += hash[s[index]]
      # 如果否，總價加上當前數字
    end

    index += 1
    # 設定條件，避免無窮迴圈
  end

  total
  # 回傳總價
end
