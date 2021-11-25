source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'mysql2'
gem 'puma'
gem 'rails'
gem 'rack-cors'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'dotenv-rails'

group :development, :test do
  gem 'rubocop'
  gem "factory_bot_rails"
  gem 'rspec-rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'spring-commands-rspec'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
