source 'https://rubygems.org'

ruby File.read('.ruby-version').strip

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.4'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'kramdown', '1.5'

gem 'slimmer', '~> 11.0.0'

gem 'govuk_frontend_toolkit', '4.10.0'
gem 'rest-client'

group :production do
  gem 'rails_stdout_logging'
end

group :development do
  gem 'spring'
  gem 'pry'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'govuk-lint', '2.1.0'
end
