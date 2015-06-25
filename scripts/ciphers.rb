def caesar_cipher(plain_text, shift)
  result = []
  plain_text.each_char do |letter|

    if (letter.ord - 97 >= 0) && (letter.ord - 97 <= 26)
      num = letter.ord - 97
      num = (num + shift) % 26
      num = num + 97
      result << num.chr
    else
      result << letter
    end
  end
  result.join("")
end

