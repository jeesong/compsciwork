require 'pry'

def disemvoweler(string)
  stringArray = string.delete(" ").split("")
  vowels = ["a","e","i","o","u"]
  storedVowels = []
  stringArray.each_with_index do |letter, index|
    # binding.pry
    if vowels.include?(letter)
      # stringArray.delete_at(index)
      storedVowels << letter
    end
  end
  stringArray.each do |letter|
    stringArray.delete(letter) if vowels.include?(letter)
  end
  p stringArray.join
  p storedVowels.join
end

# disemvoweler("aabcindecdeeff")
disemvoweler("two drums and a cymbal fall off a cliff")
disemvoweler("all those who believe in psychokinesis raise my hand")