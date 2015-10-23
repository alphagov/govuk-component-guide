# GOV.UK Component Guide

[![Build Status](https://travis-ci.org/alphagov/govuk-component-guide.svg)](https://travis-ci.org/alphagov/govuk-component-guide)

A living style guide and documentation for GOV.UK Components &mdash; A new approach to sharing UI patterns between applications without having to duplicate code.

## Caveats

It's still in it's early stages, many features are missing or incomplete, and documentation may not be 100% accurate.

It depends on [Slimmer](https://github.com/alphagov/slimmer) and makes API calls to [Static](https://github.com/alphagov/static).

## Installation

It's a pretty standard Rails app, clone it, `bundle` it.

## Running

```
$ PLEK_SERVICE_STATIC_URI=assets.digital.cabinet-office.gov.uk ./startup.sh
```

The application will start on port `3133`, so to access it visit [0.0.0.0:3113](http://0.0.0.0:3113/)

The `PLEK_SERVICE_STATIC_URI` environment variable points to a public instance of [alphagov/static](https://github.com/alphagov/static) - This is where the component documentation used to generate the dynamic parts of this guide is fetched from. Pointing at
different static hosts may show different components.

## Running against local static

If you'd like to run the component guide against a different version of static, for example, where you've added, or made changes to, components, you'll need to run a copy of static locally.

To get a local copy of [alphagov/static](https://github.com/alphagov/static), follow the installation and local running instructions there, then run the component guide with this command:

```
$ PLEK_SERVICE_STATIC_URI=http://0.0.0.0:3013 ./startup.sh
```

## Deployment

The app is deployed to a [Heroku instance](https://dashboard.heroku.com/apps/govuk-component-guide/) and is continuously deployed, updating whenever `master` changes and CI passes.

To access the Heroku admin, add yourself through the shared `heroku@digital.cabinet-office.gov.uk` account, or ask a [contributor](https://github.com/alphagov/govuk-component-guide/graphs/contributors) to add you.

### Environment vars

These are required when running a production environment

- `PLEK_SERVICE_STATIC_URI` - as above.
- `GOVUK_APP_DOMAIN`- set to `www.gov.uk`
