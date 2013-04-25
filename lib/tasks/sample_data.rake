namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "ExampleUser",
                 realName: "ExampleUser",
                 email: "example@railstutorial.org",
                 password: "foobarx",
                 password_confirmation: "foobarx")
    99.times do |n|
      name  = "example-#{n+1}"
      realName = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   name: name,
                   realName: realName,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end

