puts "--INIT--"

puts "##REGISTERING CATEGORY##"
Category.destroy_all
["personal development", "philosophy", "neuroscience"].each do |category|
    Category.create!(kind: category)
end
puts "Category successfully"

# article = Article.first 
# Comment.destroy_all
# 10.times do 
#   article.comments.create!(descriptiono: Faker::Lorem.paragraph, user_id: User.first.id)
# end