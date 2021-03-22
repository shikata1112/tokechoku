source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.5'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'launchy'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'bullet'  # N+1を検出
  gem 'rack-mini-profiler', require: false # パフォーマンス測定
end

group :test do
  gem 'selenium-webdriver'
  gem 'webdrivers', '~> 4.0'
  gem 'capybara'
  gem "shoulda-matchers"
  gem 'database_cleaner-redis'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'haml-rails'
gem 'erb2haml'
gem 'jquery-rails'
gem 'bootstrap', '~> 4.6.0'
gem 'hotwire-rails'
gem 'pry-rails'
gem 'font-awesome-sass'
gem 'whenever', require: false
gem 'kaminari'
gem 'rubocop', '~> 1.4', require: false
gem 'dotenv-rails'
gem 'slack-notifier'
# gem 'skylight'

gem 'devise' 
gem 'devise-bootstrap-views'
gem 'devise-i18n'
gem 'devise-i18n-views'
gem 'rails-i18n'

gem 'recaptcha', require: "recaptcha/rails"

gem 'jp_prefecture' # 住所自動入力(要検討)

gem "refile", require: "refile/rails", github: 'manfe/refile'
gem "refile-mini_magick"

gem 'rmagick'
gem 'mini_magick'