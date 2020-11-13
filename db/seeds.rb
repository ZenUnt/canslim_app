User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

# Kabuka.create!(
#   日付: '2010-10-10',
#   始値: 100,
#   高値: 150,
#   安値: 70,
#   終値: 130,
#   出来高: 30000,
#   終値調整値: 1,
# )