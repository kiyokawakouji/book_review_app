source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails',        '5.1.5'
gem 'mysql2',       '>= 0.3.18', '< 0.5'
gem 'puma',         '~> 3.7'
gem 'sass-rails',   '~> 5.0'
gem 'uglifier',     '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks',   '~> 5'
gem 'jbuilder',     '~> 2.5'
gem 'config'
gem 'dotenv-rails'

gem 'slim-rails'
gem 'html2slim'

gem 'devise'
gem 'omniauth-google-oauth2'
gem 'devise-i18n'
gem 'devise-i18n-views'

gem 'bootstrap', '~> 4.4.1'
gem 'jquery-rails'
gem 'devise-bootstrap-views', '~> 1.0'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails',       '~> 4.0.0'
  gem 'factory_bot_rails', '~> 4.11'
  gem 'capybara',          '~> 2.13'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen',      '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'letter_opener_web'
end
