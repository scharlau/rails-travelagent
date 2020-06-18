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

Rails generates tests by default with Minitest. Some of this code has now been modified to show what you can do with tests after you put sample data into the fixtures. This application shows you that different tests need to be used to cover different aspects of the application. 

Only some of the standard Rails tests have been edited to work to provide examples. Due to the nature of unit testing, some tests only work when the user doesn't need to log into the application.
These don't work with the application_controller before_action: sign_in? enabled. 
addresses_controller_test.rb
harbours_controller_test.rb

All fixtures are completed with sample data as well.
You can run them all with
rails test

System tests use the whole stack of the application. That means you can run the system/harbours_test.rb with the before_actin: sign_in? as this has the correct hash for the password_digest, and the password used in the test. This simulates what the browser sees, as the RSpec test does too. Therefore, the test passes the correct password for comparison with the hashed password. 

The hash can be found by creating a user account in the app that you want to use in your fixture for testing, and copying the password_digest from the development.log file. This is not elegant, but does work to set up the tests, which will be run repeatedly to confirm the app is running correctly.

The RSpec tests have been modified to follow general practice. Controller tests, view, and routing tests have been removed as they don't test the full stack. Some request tests were attempted with user_spec.rb, but that didn't work as not all components were included in the test. 

There is also an integration test: create_customer_spec.rb to cover creating an account, and login to enable the old tests to run with the new configuration that means you need to login before you can see the app. There is also a test to create a new customer. You can run this with
rspec spec/integration/create_customer_spec.rb

This application has had nothing done for its styling. It is 'fresh out of the box' with a focus on 'how' components work, and no concern with 'how it looks'.

### History
By the way, some of you might recognise this app as being based on the travel agent example from the O'Reilly Enterprise JavaBeans book. This is, indeed, a take on that old scenario. https://books.google.co.uk/books/about/Enterprise_JavaBeans_3_0.html?id=kD-bAgAAQBAJ&redir_esc=y 

### Building the app
1. Download the code
2. Bundle install
3. rails webpacker:install
4. yarn install --missing files
5. rake db:migrate
6. rake db:seed (this loads two harbours into the database)
7. rake ships:seed_cabins (this loads the made up data for the app)
8. rails server 

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


