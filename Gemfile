source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"

gem "rails"
gem "pg"
gem "puma"
gem "sass-rails"
gem "uglifier"
gem "coffee-rails"
gem "turbolinks"
gem "jbuilder"
gem "bootsnap", require: false
gem "slim-rails"
gem "dotenv-rails"

group :development, :test do
  gem "byebug"
end

group :development do
  gem "web-console"
  gem "listen"
  gem "spring"
  gem "spring-watcher-listen"

  gem "capistrano", require: false
  gem "capistrano3-puma", "4.0.0", require: false
  gem "capistrano-rails", require: false
  gem "capistrano-rbenv", require: false
  gem "capistrano-rails-console", require: false
  gem "ed25519", require: false
  gem "bcrypt_pbkdf", require: false
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "chromedriver-helper"
end
