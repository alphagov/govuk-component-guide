source 'https://rubygems.org'

ruby File.read('.ruby-version').strip

gem 'rails', '5.0.4'
gem 'slimmer', '~> 11.0.0'
gem 'govuk_publishing_components', path: '../govuk_publishing_components'

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
