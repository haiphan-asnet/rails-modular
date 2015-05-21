Rails.application.routes.draw do
  mount Blog::Core::Engine => "/", as: "blog"
end
