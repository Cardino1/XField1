# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.4.4"

gem "rails", "~> 7.1.3"

gem "puma", "~> 6.4"
gem "sassc-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bootsnap", require: false

group :development, :test do
  gem "sqlite3", "~> 1.4"
  gem "debug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "web-console"
  gem "listen"
  gem "spring"
end

group :production do
  gem "pg"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
platforms :mingw, :x64_mingw, :mswin do
  gem "tzinfo", "~> 2.0"
  gem "tzinfo-data"
end

