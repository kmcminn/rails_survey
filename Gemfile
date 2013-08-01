source 'https://rubygems.org'

# pin gem versions to ruby version
ruby '1.9.3'

# rails 3 app
gem 'rails', '3.2.14'

# asset pipeline gems
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem "therubyracer"
  gem "less-rails"
  gem 'twitter-bootstrap-rails'
end

# general gems
gem 'jquery-rails'
gem 'rb-readline'
gem 'simple_form'

# environment gems
group :development do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'capybara'
end

group :production do
  gem 'pg', '0.16.0'
  gem 'rails_12factor', '0.0.2'
end
