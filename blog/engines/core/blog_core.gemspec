$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blog/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blog_core"
  s.version     = Blog::Core::VERSION
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = "http://github.com"
  s.summary     = "The Blog core engine."
  s.description = "The Blog core engine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.1"
  s.add_dependency "sass-rails", "~> 5.0.3"
  s.add_dependency "bower-rails", "~> 0.9.2"
  s.add_dependency 'devise', '~> 3.4.1'
  s.add_dependency 'pg'
end
