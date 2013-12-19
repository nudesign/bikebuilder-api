source 'https://rubygems.org'

ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# gem 'mongoid', git: 'https://github.com/mongoid/mongoid.git'
gem 'pg', '0.17.0'

# To use Jbuilder templates for JSON
gem 'jbuilder', '~> 1.5.1'

gem 'inherited_resources', github: 'josevalim/inherited_resources'
gem 'omniauth-facebook', '~> 1.4.1'


group :development do
  # Guard
  gem 'guard',       '~> 1.8.1'
  gem 'guard-rspec', '~> 3.1.0'
  gem 'spork-rails', github: 'sporkrb/spork-rails' # add support for Rails 4
  gem 'guard-spork', '~> 1.5.1'
  gem 'rb-fsevent',  '~> 0.9.0'

  # Guard LiveReload
  gem 'guard-livereload', '~> 1.4.0'
  gem 'rack-livereload',  '~> 0.3.0'
  gem 'yajl-ruby',        '~> 1.1.0'

  # Guard notifiers
  gem 'growl',            '~> 1.0.0' # growl
end

group :development, :test do
  gem 'factory_girl_rails', '~> 4.2.1'
  gem 'rspec-rails',        '~> 2.14.0'
end

group :test do
  gem 'database_cleaner', '~> 1.1.1'
  gem 'shoulda-matchers', '~> 2.2.0'
  gem 'simplecov',        '~> 0.7.0', require: false
end
