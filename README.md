# Cucumber FutureGov

Shared step definitions and helper methods for Cucumber.

## Description

A minimalist set of shared steps and helpers to help you get started writing
scenarios, and provide an example of reasonably good practice (no, the irony
of providing an example of good practice with shared steps is not lost on me).

## Installation

Add to your Gemfile:

    gem 'cucumber-futuregov', git: 'https://github.com/wearefuturegov/cucumber-futuregov.git', require: false

And require from cucumber env.rb:

    require 'cucumber/futuregov'

You can also load selectively, e.g.

    require 'cucumber/futuregov/devise'

## Usage

For now, please review the files in the steps and helpers directories, there
ain't much there and the code should be easy to understand. You can also run
`yard server` and visit `http://localhost:8088` to view whatever documentation
is generated (note: requires yard and redcarpet gems to be installed first).
