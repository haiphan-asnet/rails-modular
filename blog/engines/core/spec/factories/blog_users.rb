require 'faker'

FactoryGirl.define do
  factory :blog_user, class: 'Blog::User', aliases: [:user] do
    email 'hairbeos@y.com'
    password 123456789
  end
end
