puts "--INIT--"

puts "##REGISTERING CATEGORY##"
Category.destroy_all
["personal development", "philosophy", "neuroscience"].each do |category|
    Category.create!(kind: category)
end
puts "Category successfully"