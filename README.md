# Bluepan

Rails Engine for use with [Bluepan](https://bluepan.net).

## Requirements

This engine assumes your main app uses [sidekiq](https://github.com/mperham/sidekiq) and [sidekiq-cron](https://github.com/ondrejbartas/sidekiq-cron). It will automatically register the schedule to sync the provinces, cities, and other data.

## Installation

- Add the gem to your Gemfile and executing `bundle install`
