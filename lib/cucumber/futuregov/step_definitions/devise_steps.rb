require_relative '../helpers/devise_helper'

Given(/^I have signed in$/) do
  given_sign_in_as @i
end

When(/^I sign in$/) do
  sign_in_as @i
end

When(/^I sign out$/) do
  sign_out_as @i
end

Then(/^I should be signed in$/) do
  should_be_signed_in_as @i
end
