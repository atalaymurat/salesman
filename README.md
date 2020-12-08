install imagemagick command-line

for ubuntu 
sudo apt install imagemagick

Also for pdf generation using wicked pdf 
install if there is any needed package for your system
for Ubuntu 20.04 focal
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb
sudo apt install ./wkhtmltox_0.12.6-1.focal_amd64.deb



# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.6.5

* System dependencies

* Configuration
master.key (you need master.key)
gem install bundler:2.0.2
bundle

brew install imagemagick
brew cask install wkhtmltopdf

* Database creation
brew install postgresql
* Database initialization
service postgresql start
rails db:create
rails db:migrate

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
