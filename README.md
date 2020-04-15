# Getting started

1. clone the repo into a desired folder using clone the repo using
  `git clone git@github.com:dxw/rspec-capybara-workshop.git`

2. install prerequisites using the following terminal commands
  `brew install rbenv`
  `rbenv install 2.6.3`
  `gem install bundler:2.0.2`
  `bundle install`
  `yarn install`

3. get it running using the following terminal commands
  `rails db:setup`
  `bundle exec rspec`
  Visit `localhost:3000` to view the service

## Running the tests

Enter `bundle exec rspec` to run the tests.
Edit `spec>features>choose_an_ice_cream_spec.rb` to amend the tests

## Releasing changes

When making a new release, update the [changelog](CHANGELOG.md) in the release
pull request.

## Source

This repository was bootstrapped from
[dxw's `rails-template`](https://github.com/dxw/rails-template).
