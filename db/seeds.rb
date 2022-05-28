# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

authors = []
100.times do
  authors << Author.create({
                            name: Faker::Name.first_name,
                            email: Faker::Internet.safe_email,
                            phone: Faker::PhoneNumber.cell_phone
                          })
end

authors.each do |author|
  author.courses.create({
                          name: Faker::Book.title,
                          description: Faker::Lorem.sentence
                        })

  author.courses.create({
                          name: Faker::Book.title,
                          description: Faker::Lorem.sentence
                        })
end

20.times do 
  course = Course.order(Arel.sql('RANDOM()')).first
  author_id = Random.rand(2) == 0 ? authors.pluck(:id).sample : nil
  talent = Talent.create(name: Faker::Book.author, author_id: author_id)
  talent.courses << course
end