module Blog
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Blog

      # require "#{Rails.root}/config/initializers/bower_rails.rb"
      require "#{Blog::Core::Engine.root}/config/initializers/bower_rails.rb"
    end
  end
end