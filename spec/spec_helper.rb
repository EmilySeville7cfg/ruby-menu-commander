require 'simplecov'
SimpleCov.start

require 'rubygems'
require 'bundler'
Bundler.require :default, :development

require 'mister_bin'

include MenuCommander
require_relative 'spec_mixin'

RSpec.configure do |config|
  config.include SpecMixin
  config.include Colsole
  config.strip_ansi_escape = true
  config.fixtures_path = File.expand_path 'approvals', __dir__  
end

ENV['TTY'] = 'on'
ENV['MENU_COMMANDER_ENV'] = 'test'