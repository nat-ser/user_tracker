# frozen_string_literal: true
20.times do
  User.create(
    email: Faker::Internet.email,
    password: "Password!?",
    created_at: Faker::Date.between(20.days.ago, Date.today)
  )
end
