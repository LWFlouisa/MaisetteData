weighted_dataset = [
  [ ["Cette livre es ancien.",                  0.0155571428727],
    ["Cette livre es ancien.",                  0.0155571428727],
    ["Sinon livre es ne ancien ou jeune.", 0.054450000000000005],
    ["Cette livre es ancien.",                  0.0155571428727],
    
    0.000000059 ],

  [ ["Cette livre es ancien.",                  0.0155571428727],
    ["Sinon livre es ne ancien ou jeune.", 0.054450000000000005], 
    ["Mais cette livre es ne ancien.",          0.0155571428727],
    
    0.000013178 ],
  
  [ ["Sinon livre es ne ancien ou jeune.",      0.0155571428727],
    ["Cette livre es ancien.",                  0.0155571428727],
    ["Sinon livre es ne ancien ou jeune.", 0.054450000000000005],
    ["Mais cette livre es ne ancien.",     0.054450000000000005],
    ["Sinon livre es ne ancien ou jeune.", 0.054450000000000005],
    
    0.000000039 ],
]

first_pattern  = weighted_dataset[0]
second_pattern = weighted_dataset[1]
third_pattern  = weighted_dataset[2]

## Conditional Labels
cette    = first_pattern[0][0],    first_pattern[0][1]
maisette = second_pattern[2][0], second_pattern[2][1]
sinon    = third_pattern[0][0],   third_pattern[0][1]

## Summary Probabilities
first_summary  = weighted_dataset[0][3]
second_summary = weighted_dataset[1][2]
third_summary  = weighted_dataset[2][5]

meta_dataset = [cette[0], maisette[0], sinon[0]]
meta_summary = cette[1] * maisette[1] * sinon[1]

joint_metaset = meta_dataset, meta_summary

print joint_metaset
puts " "
