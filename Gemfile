# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Bootstrap is my CSS framework
gem 'bootstrap', '~> 4.2.1'
gem 'jquery-rails'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# HTML templating
gem 'haml'
gem "haml-rails", "~> 1.0"

# For ENV variables
gem "figaro"

# Sending emails
gem 'mailgun-ruby', '~>1.1.6'

# Images
gem 'paperclip'
gem 'aws-sdk', '~> 2.3'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # Alert on N+1 queries
  gem 'bullet'

  # RSpec testing
  gem 'rails-controller-testing'
  gem 'rspec-rails'

  # Static code analyzer
  gem 'rubocop'
  gem 'rubocop-rspec'

  # Pry for a better life
  gem 'pry'
  gem 'pry-rails'
end

group :development do
  gem 'better_errors'

  gem 'listen', '>= 3.0.5', '< 3.2'

  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'faker'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
