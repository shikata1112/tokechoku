source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.0.3', '>= 6.0.3.5'
gem 'mysql2', '>= 0.4.4'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'image_processing', '~> 1.2'

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
  gem 'awesome_print'
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
gem 'discard', '~> 1.2'
gem 'activestorage-validator'

gem 'devise' 
gem 'devise-bootstrap-views'
gem 'devise-i18n'
gem 'rails-i18n'

gem 'recaptcha', require: "recaptcha/rails"

gem 'jp_prefecture'

gem "refile", require: "refile/rails", github: 'manfe/refile'
gem "refile-mini_magick"

gem 'rmagick'
gem 'mini_magick'

gem 'payjp'
