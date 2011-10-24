ENV["RAILS_ENV"] ||= "test"

require 'pry'
require 'dummy/config/environment'
require 'rspec-rails'

Rails.root.join("spec/dummy")

load "#{Rails.root}/db/schema.rb"

require 'nested_has_many_through_gem'
