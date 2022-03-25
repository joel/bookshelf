# frozen_string_literal: true

source "https://rubygems.org"

gem "hanami", "~> 1.3"
gem "hanami-model", "~> 1.3"
gem "rake"

gem "sqlite3"

group :development do
  # Code reloading
  # See: https://guides.hanamirb.org/projects/code-reloading
  gem "hanami-webconsole"
  gem "shotgun", platforms: :ruby

  gem "rubocop", require: false
  gem "rubocop-gitlab-security", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rake", require: false
  gem "rubocop-rspec", require: false
end

group :test, :development do
  gem "dotenv", "~> 2.4"
end

group :test do
  gem "capybara"
  gem "rspec"
end

group :production do
  # gem 'puma'
end
