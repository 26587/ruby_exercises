def ceaser_cipher(sentence, shift)
  arr = sentence.split('')
  result = ''
  arr.each do |char|
    base = char.ord >= 97 ? 97 : 65
    
    if (char.ord.between?(65, 90) || char.ord.between?(97, 122))
      result << ((((char.ord - base) + shift) % 26) + base)
    else
      result << char
    end      
  end
  
  return result
end

puts ceaser_cipher('How are you!!!', 26)
