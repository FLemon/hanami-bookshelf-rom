source 'https://rubygems.org'

gem 'rake'
gem 'hanami', git: "https://github.com/FLemon/hanami", branch: 'ruby-3'
gem 'hanami-utils', git: 'https://github.com/swilgosz/hanami-utils', branch: '1.3.x-support-ruby-3.0'
gem 'hanami-ruby3', git: 'https://github.com/FLemon/hanami-ruby3', branch: 'ruby-3'
gem 'hanami-validations', '2.0.0.alpha1'
gem 'hanami-router', '~> 1.3.2'

gem 'rom', '~> 5.2'
gem 'rom-sql', '~> 3.5'
gem 'pg'
gem 'puma'

group :development do
  gem 'byebug'
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  # gem 'shotgun', platforms: :ruby
  # gem 'hanami-webconsole'
end

group :test, :development do
  gem 'dotenv', '~> 2.4'
end

group :test do
  gem 'rspec'
  gem 'capybara'
end

group :production do
  # gem 'puma'
end
