require "./decisiontree/core_extentions/*"
require "./decisiontree/*"

module Decisiontree
  attributes = ["Temperature"]

  training = [
    [36.6, "healthy"],
    [37.1, "sick"],
    [38.3, "sick"],
    [36.7, "healthy"],
    [40.2, "sick"],
    [50.1, "really sick"],
  ]
  
  p [1,2,3].reduce {|sum,e| sum += e}

  dec_tree = DecisionTree::ID3Tree.new(attributes, training, "sick", :continuous)
  dec_tree.train

#  test = [37, "sick"]
#  decision = dec_tree.predict(test)
#  puts "Predicted: #{decision} ... True decision: #{test.last}"

end
