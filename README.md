# Getting started

## Prerequisites

- Ruby 2.6.3 - `brew install rbenv && rbenv install 2.6.3`
- Bundler - `gem install bundler`

## Installation

1. Clone the repo into a desired folder
  - `git clone git@github.com:dxw/rspec-capybara-workshop.git`

2. Install the dependencies
  - `bundle install`
  - `yarn install`

3. Prepare the database
  - `bundle exec rails db:setup`

4. Run the web server
  - `bundle exec rails server`
  - Visit `http://localhost:3000` to view the service

## Running the tests

Run `bundle exec rspec` to run the test suite.
Edit `spec/features/choose_an_ice_cream_spec.rb` to amend the tests.

## Source

This repository was bootstrapped from
[dxw's `rails-template`](https://github.com/dxw/rails-template).
