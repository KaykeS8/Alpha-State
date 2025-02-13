puts "Begin proccess"

["Philosophy", "Person development", "Neuroscience"].each do |type_of_category|
    Category.create!(kind: type_of_category)
end

puts "Categories registered"