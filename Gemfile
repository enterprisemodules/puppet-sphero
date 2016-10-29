source "http://rubygems.org"

group :test do
  gem "rake"
  gem "puppet", ENV['PUPPET_GEM_VERSION'] || '~> 3.7.0'
  gem "puppet-lint"
  gem "rspec-puppet" 
  gem "puppet-syntax"
  gem "puppetlabs_spec_helper"
  gem 'librarian-puppet'
  gem 'easy_type_helpers', :git => 'https://a9d3e7385d6e50575580b9fe65e514b81f8e3505@github.com/enterprisemodules/easy_type_helpers.git'
end

group :development do
  gem 'byebug'
  gem 'pry'
  gem 'pry-byebug'
  gem "travis"
  gem "travis-lint"
  gem 'beaker'
  gem "beaker-rspec", '5.0.2'
  gem "puppet-blacksmith"
  gem "guard-rake"
end
