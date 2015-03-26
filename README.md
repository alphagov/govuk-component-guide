# GOV.UK Component Guide

[![Build Status](https://travis-ci.org/alphagov/govuk-component-guide.svg)](https://travis-ci.org/alphagov/govuk-component-guide)

A living style guide and documentation for GOV.UK Components &mdash; A new approach to sharing UI patterns between applications without having to duplicate code.

## Caveats

It's still in it's early stages, many features are missing or incomplete, and documentation may not be 100% accurate.

It depends on [Slimmer](https://github.com/alphagov/slimmer) and makes API calls to [Static](https://github.com/alphagov/static).

## Installation

It's a pretty standard Rails app, clone it, `bundle` it.

## Running

You'll need to set the environment variable `PLEK_SERVICE_STATIC_URI` to be a host running an instance of [alphagov/static](https://github.com/alphagov/static).

This is where the component documentation used to generate the dynamic parts of this guide is fetched from. Pointing at
different static hosts may show different components. For example, pointing at `assets.digital.cabinet-office.gov.uk` will
be the latest/in-production version of components, but you could also point a local/in-development static host, to preview
it's components (see below)

## Running locally

Checkout [alphagov/static](https://github.com/alphagov/static), follow the installation and local running instructions there, then run:

```
PLEK_SERVICE_STATIC_URI=http://0.0.0.0:3013 bundle exec rails s
```

This will point the component guide at your local running version of static.

## Deployment

The app is currently deployed to a [Heroku instance](https://dashboard.heroku.com/apps/govuk-component-guide/), and to deploy it you'll need access to the Heroku admin panel.

You can add yourself through the shared `heroku@digital.cabinet-office.gov.uk` account, or ask a [contributor](https://github.com/alphagov/govuk-component-guide/graphs/contributors) to add you.

Once you have access you can [deploy to Heroku through git](https://devcenter.heroku.com/articles/git)

### Environment vars

These are required when running a production environment

- `PLEK_SERVICE_STATIC_URI` - as above.
- `GOVUK_APP_DOMAIN`- set to `www.gov.uk`
