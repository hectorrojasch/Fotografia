require 'csv'

puts 'Importing tags 9...'
CSV.foreach(Rails.root.join('db/seeds/csv/tags.csv')) do |row|
  Tag.create! do |tag|
    tag.id = row[0]
    tag.name = row[1]
  end
end

puts 'Importing publication 50...'

50.times do
  publi = Publication.new(
    name: Faker::Dessert.flavor,
    deit: Faker::Date.forward(days: 23),
    comment: Faker::Lorem.paragraph,
    tag_id: rand(1..9)
    
  )
  publi.save!
end