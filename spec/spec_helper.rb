
  ENV["RAILS_ENV"] ||= 'test'
  require File.dirname(__FILE__) + "/../config/environment"
  require 'rspec/rails'


  require 'capybara/rails'
  require 'capybara/rspec'
  require 'capybara/poltergeist'
  require 'billy/rspec'

  # select a driver for your chosen browser environment
  # Capybara.javascript_driver = :selenium_billy
  # Capybara.javascript_driver = :webkit_billy
  # Capybara.javascript_driver = :poltergeist_billy

  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, :inspector => true, :debug => true)
  end

  # Capybara.javascript_driver = :poltergeist
  Capybara.javascript_driver = :poltergeist

  Capybara.server do |app, port|
    require 'rack/handler/webrick'
    Rack::Handler::WEBrick.run(app, :Port => port, :AccessLog => [], :Logger => WEBrick::Log::new(nil, 0))
  end