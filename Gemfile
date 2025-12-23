source "https://rubygems.org"

gem "rails", "~> 8.1.1"
gem "propshaft"

# Database
gem "sqlite3", "~> 2.5", platforms: %i[ mri mingw x64_mingw ]

# Server
gem "puma", ">= 5.0"

# Frontend / Hotwire
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"

# Auth
gem "bcrypt", "~> 3.1.7"

# Timezones for Windows
gem "tzinfo-data", platforms: %i[ mingw x64_mingw mswin jruby ]

# Solid adapters
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Performance
gem "bootsnap", require: false

# Deployment (not used locally)
gem "kamal", require: false
gem "thruster", require: false

# Image processing
gem "image_processing", "~> 1.2", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem "tailwindcss-rails", "~> 3.3.1"
