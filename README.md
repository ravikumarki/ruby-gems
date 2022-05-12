# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration
23 devise confirmable in production. sendgrid


* Database creation
heroku addons:create sendgrid:starter

* Database initialization
environment.rb
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net', 
  :port => '587', 
  :authentication => :plain, 
  :user_name => ENV['SENDGRID_USERNAME'], 
  :password => ENV['SENDGRID_PASSWORD'], 
  :domain => 'heroku.com', 
  :enable_starttls_auto => true 
}

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
22 devise confirmable in development
https://github.com/heartcombo/devise/wiki/How-To:-Add-:confirmable-to-Users