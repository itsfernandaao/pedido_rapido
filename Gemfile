source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise_token_auth', '~> 1.1.4'
gem 'rack-cors', '~> 1.1.1'
gem 'jbuilder'

group :development, :test do
  gem 'pry'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
  gem 'faker'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
