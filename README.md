#TRAVELAGENT APPLICATION

This is the application used for a class on Ruby on Rails based around a travel agency that books cruises for its customers. You can find the practicals explaining the steps to build this app at: https://homepages.abdn.ac.uk/b.scharlau/pages/rails-pages/ 

The goal of this practical is to move beyond simple apps to one, which brings a variety of aspects referenced tables and objects together so that the participants experience the breadth and variety available in Rails applications.

Version 1 was created quickly and without much consideration to the order of what should be done. This worked as a proof of concept.

Version 2 was created with more thought about the order in which concepts in Rails were introduced, and how the application was developed. We'll see how this works with students.

This application has had nothing done for its styling. It is 'fresh out of the box' with a focus on 'how' components work, and no concern with 'how it looks'.

By the way, some of you might recognise this app as being based on the travel agent example from the O'Reilly Enterprise JavaBeans book. This is, indeed, a take on that old scenario.

Deployed to Heroku
Running as rough working example to see how it can be done
https://awad-travelagent.herokuapp.com/ 
Modified gemfile
a) add pg gem for Heroku and put sqlite3 under dev
b) add faker gem to general list as need it in production 
c) Push repo to heroku via git to deploy
d) Run commands to set up and then seed the database
        heroku rake db:migrate
        heroku rake ships:seed_cabins


