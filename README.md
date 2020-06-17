# TRAVELAGENT APPLICATION

This is the application used for a class on Ruby on Rails based around a travel agency that books cruises for its customers. You can find the practicals explaining the steps to build this app at: https://homepages.abdn.ac.uk/b.scharlau/pages/rails-pages/ 

The goal of this practical is to move beyond simple apps to one, which brings a variety of aspects referenced tables and objects together so that the participants experience the breadth and variety available in Rails applications.

This app user the faker gem to generate random data to populate the tables. Sometimes the gem changes, which brakes this process. Check the generators at https://github.com/faker-ruby/faker if this happens when you run the lib/ships.rake file to generate your ships, cruises, and customers.

### Versions As Branches

Version 1 was created quickly and without much consideration to the order of what should be done. This worked as a proof of concept.

Version 2 was created with more thought about the order in which concepts in Rails were introduced, and how the application was developed. We'll see how this works with students.

Version 3 is the final version done with Rails 5 with final work being done January 2020.

The master branch is now Rails 6. To make the switch the gemfile was updated, followed by bundle update to bring the gems in line with what's needed. This smoothly updated the gems, and 'bundle install' now runs fine.

Switching to Rails 6, and then Webpacker, means a few changes in how to run this application. You now need to run the following if you're installing this locally.
bundle install
rails webpacker:install
yarn install --missing files

At the moment, however, this application doesn't use any of the webpacker features.

### Testing
There are both built-in tests, and the basics of an RSpec integration test.

Rails generates tests by default with Minitest. Some of this code has now been modified to show what you can do with that after you put sample data into the fixtures. Only some of the tests have been edited to work smoothly by way of example.
These don't work with the application_controller before_action: sign_in? enabled. The RSpec test does.
addresses_controller_test.rb
harbours_controller_test.rb

All fixtures are completed with sample data as well.
You can run them all with
rails test

The RSpec tests are in create_customer_spec.rb to cover creating an account, and login to enable the old tests to run with the new configuration that means you need to login before you can see the app. There is also a test to create a new customer. You can run this with
rspec spec/integration/create_customer_spec.rb

This application has had nothing done for its styling. It is 'fresh out of the box' with a focus on 'how' components work, and no concern with 'how it looks'.

By the way, some of you might recognise this app as being based on the travel agent example from the O'Reilly Enterprise JavaBeans book. This is, indeed, a take on that old scenario.

## Deployed to Heroku
Running as rough working example to see how it can be done
https://awad-travelagent.herokuapp.com/ 
Modified gemfile
1. add pg gem for Heroku and put sqlite3 under dev
2. add faker gem to general list as need it in production 
3. Push repo to heroku via git to deploy
4. Run commands to set up and then seed the database (seed file has harbours, rake file everything else)
* heroku rake db:migrate
* heroku rake db:seed
* heroku rake ships:seed_cabins


