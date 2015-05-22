require 'faker'

FactoryGirl.define do
  factory :blog_user, class: 'Blog::User', aliases: [:user] do
    email { Faker::Internet.email }
    password 123456789
  end
end
