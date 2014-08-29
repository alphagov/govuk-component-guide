# GOV.UK Component Guide

A living style guide and documentation for GOV.UK Components &mdash; A new approach to sharing UI patterns between applications without having to duplicate code.

## Caveats

It's still in it's early stages, many features are missing or incomplete, and documentation may not be 100% accurate. 

It currently depends on an unreleased version of [Slimmer](https://github.com/alphagov/slimmer), in particular on this [branch](https://github.com/alphagov/slimmer/pull/76/files), as well as a [branch](https://github.com/alphagov/static/pull/430/files) on [Static](https://github.com/alphagov/static).

If you're running those branches of Slimmer and Static locally then you can use this app by setting the `SLIMMER_DEV` environmental variable while running the app.

## Installation

It's a pretty standard Rails app, clone it, `bundle` it.

## Running

You'll need to set the environment variable `PLEK_SERVICE_STATIC_URI` to be a host running an instance of [alphagov/static](https://github.com/alphagov/static).

This is where the component documenation used to generate the dynamic parts of this guide is fetched from. Pointing at
different static hosts may show different components. For example, pointing at `assets.digital.cabinet-office.gov.uk` will
be the latest/in-production version of components, but you could also point a local/in-development static host, to preview
it's components (see below)

## Running locally

Checkout [alphagov/static](https://github.com/alphagov/static), follow the installation and local running instructions there, then run:

```
PLEK_SERVICE_STATIC_URI=http://0.0.0.0:3013 bundle exec rails s
```

This will point the component guide at your local running version of static.

## Running on Heroku

In addition to the static host, `GOVUK_APP_DOMAIN` needs to be set, just use `www.gov.uk`.
