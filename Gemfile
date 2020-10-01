source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '~> 6.0.3', '>= 6.0.3.2' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'jbuilder', '~> 2.7' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'pg', '>= 0.18', '< 2.0' # Use postgresql as the database for Active Record
gem 'puma', '~> 4.1' # Use Puma as the app server
gem 'sass-rails', '>= 6' # Use SCSS for stylesheets
gem 'webpacker', '~> 5.2' # Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# gem 'bcrypt', '~> 3.1.7' # Use Active Model has_secure_password
gem 'any_login'
gem 'bootsnap', '>= 1.4.2', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'devise' # Flexible authentication solution for Rails
gem 'stripe' # Ruby library for the Stripe API.

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw] # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'dotenv-rails'
  gem 'pry-rails' # Rails >= 3 pry initializer
end

group :development do
  gem 'annotate' # Annotate Rails classes with schema and routes info
  gem 'listen', '~> 3.2' # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'rubocop', require: false # A Ruby static code analyzer and formatter, based on the community Ruby style guide.
  gem 'rubocop-performance', require: false # An extension of RuboCop focused on code performance checks.
  gem 'rubocop-rails', require: false # A RuboCop extension focused on enforcing Rails best practices and coding conventions.
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
