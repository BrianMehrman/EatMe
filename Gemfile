source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'
gem 'paperclip'
gem 'browser'

group :development do
  gem 'sqlite3'
  gem 'pg', '0.11.0'
  gem 'mysql2'
end

group :prodection do
  gem 'pg', '0.11.0'
  gem 'thin'
end

gem 'haml', '3.1.4'

group :development do 
  gem 'haml-rails', '0.3.4'
  gem 'rspec-rails', '2.7.0'
  gem 'guard-rspec', '0.5.9'
  gem 'growl', '1.0.3'
end

group :cucumber do
  gem 'capybara', '1.1.2'
  gem 'database_cleaner', '0.7.0'
  gem 'cucumber-rails', '1.2.1'
  gem 'cucumber', '1.1.3'
  gem 'spork', '0.8.5'
  gem 'launchy', '2.0.5'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'minitest', '2.9.0'
  gem 'turn', '0.8.2', :require => false
  gem 'rspec'
end
