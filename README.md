# Bluepan

[![Build Status](https://travis-ci.org/bloom-solutions/bluepan-rails.svg?branch=master)](https://travis-ci.org/bloom-solutions/bluepan-rails)

Rails Engine for use with [Bluepan](https://bluepan.net).

## Requirements

This engine assumes your main app uses [sidekiq](https://github.com/mperham/sidekiq) and [sidekiq-cron](https://github.com/ondrejbartas/sidekiq-cron). It will automatically register the schedule to sync the provinces, cities, and other data.

## Installation

- Add the gem to your Gemfile and executing `bundle install`
- `bundle`
- `rake bluepan:install:migrations`
- `rake db:migrate`

During your application initialization, call `Bluepan::LoadSidekiqCronSchedule.()` to load the sync job cron.

## Development

- Copy `.env.sample` to `.env`
- Replace the variables with your credentials
