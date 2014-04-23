require 'faker'

user = User.new(
  name: 'Malos',
  email: 'mcollie07@yahoo.com',
  password: 'helloworld',
  password_confirmation: 'helloworld')
user.skip_confirmation!
user.save

  # Create events
  50.times do
    Event.create(
      user: user,
      name: Faker::Name.name, 
      application: Faker::Lorem.word,
      topic_name: Faker::Lorem.sentence,
      app_user: Faker::Number.number(1),
      app_owner: "mcollie07@yahoo.com"
    )
  end

puts "Seed finished"
puts "#{Event.count} events created"
