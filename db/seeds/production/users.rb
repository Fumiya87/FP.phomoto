User.create!(
  email: "bike@bike.com",
  name: "bike太郎",
  account: "master",
  introduction: "初めまして。ご覧いただきありがとうございます。",
  
  tel: Faker::PhoneNumber.phone_number,
  sex: 1,
  password: "password",
  password_confirmation: "password",
  admin: true,
  image: File.open("#{Rails.root}/db/thumb_image_seeds/default.jpg")
)
User.create!(
  email: "test@example.com",
  name: "テスト太郎",
  account: "tester",
  introduction: "初めまして。テストユーザーです。",
 
  tel: Faker::PhoneNumber.phone_number,
  sex: 1,
  password: "password",
  password_confirmation: "password",
  admin: false,
  image: File.open("#{Rails.root}/db/thumb_image_seeds/default.jpg")
)

image_num_array=[*1..10].shuffle!
10.times do |n|
  email="example-#{n}@example.com"
  name=Faker::Name.name
  account="user#{n}"
  password="password"
  image_num=image_num_array.shift
  User.create!(
    email: email,
    name: name,
    account: account,
    introduction: "初めまして。ご覧いただきありがとうございます。",
    tel: Faker::PhoneNumber.phone_number,
    sex: n%3,
    password: password,
    password_confirmation: password,
    image: File.open("#{Rails.root}/db/thumb_image_seeds/#{image_num}.jpg")
  )
end