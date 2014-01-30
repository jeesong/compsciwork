require 'pry'

def combination_lock(locksize, comb1, comb2, comb3)
  # initial 2 clockwise spin (10)
  increment = locksize*2
  # rotating to comb1 (11)
  increment += comb1
  # rotating counter-clockwise to comb2
  comb2 > comb1 ? increment += locksize*2 - (comb2 - comb1) : increment += locksize + comb1 - comb2
  # rotating clockwise to comb3
  comb3 > comb2 ? increment += comb3 - comb2 : increment += locksize - comb2 + comb3
end

puts combination_lock(5,1,2,3)
puts combination_lock(5,3,2,1)
# binding.pry