source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'sqlite3', '~> 1.3.6'
gem 'puma', '~> 3.7'
gem 'graphql', '~> 1.7.13'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'graphiql-rails', '~> 1.4.10'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
