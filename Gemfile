source 'https://rubygems.org'


ruby '2.2.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use sqlite3 as the database for Active Record

# Use SCSS for stylesheets
gem 'sass-rails', :git => 'https://github.com/zakelfassi/sass-rails' # Until the gem is officially updated.
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

#For search function
gem 'searchkick'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'fancybox2-rails', '~> 0.2.8'
#Devise Authentication Gem
gem 'devise', '~> 3.5', '>= 3.5.2'
#Will Paginate
gem 'will_paginate', '~> 3.0', '>= 3.0.7'
#Using Bootfalt Flat UI For Bootstrap
gem 'bootflat-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

#For Heroku Deployment
gem 'puma'

#Heroku Database
gem 'pg'


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
	gem 'rails_12factor'
end