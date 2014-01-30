def combination_lock(locksize, comb1, comb2, comb3)
  # initial 2 clockwise spin (10)
  increment += locksize.to_i * 2
  # rotating to comb1 (11)
  increment += comb1
  # rotating counter-clockwise to comb2
  increment +=
  # rotating clockwise to comb3
  increment +=
end