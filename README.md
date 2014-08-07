# GOV.UK Component Guide

A living style guide and documentation for GOV.UK Components &mdash; A new approach to sharing UI patterns between applications without having to duplicate code.

## Caveats

It's still in it's early stages, many features are missing or incomplete, and documentation may not be 100% accurate. 

It currently depends on an unreleased version of [Slimmer](https://github.com/alphagov/slimmer), in particular on this [branch](https://github.com/alphagov/slimmer/pull/76/files), as well as a [branch](https://github.com/alphagov/static/pull/430/files) on [Static](https://github.com/alphagov/static).

If you're running those branches of Slimmer and Static locally then you can use this app by setting the `SLIMMER_DEV` environmental variable while running the app.

## Installation

It's a pretty standard Rails app, clone it, bundle and run with bundle.


## Running on Heroku

You'll need a couple of ENV vars:

`GOVUK_APP_DOMAIN` needs to be set, just use `www.gov.uk`

`PLEK_SERVICE_STATIC_URI` should be set to a GOV.UK [Static](https://github.com/alphagov/static) host, eg `https://assets-origin.preview.alphagov.co.uk`.
That version of Static is used to fetch components from.
