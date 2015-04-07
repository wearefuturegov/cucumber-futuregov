# use warden test mode to allow fast sign in for given steps
Warden.test_mode!
After { Warden.test_reset! }

module Cucumber
  module FutureGov
    module DeviseHelper

      include Warden::Test::Helpers

      def sign_in_as(user, attrs={})
        email = attrs[:email] || user.email
        password = attrs[:password] || user.password
        scope = Devise::Mapping.find_scope!(user)
        visit send("new_#{scope}_session_path")
        within(:xpath, "//form[contains(@action,'sign_in')]") do
          fill_in "#{scope}_email", with: email
          fill_in "#{scope}_password", with: password
          find(:css, "input[type='submit']").click
        end
      end

      def given_sign_in_as(user)
        # Fast sign in for given steps, bypass devise and use warden test
        # helper to create authenticated session, without driving the ui.
        # See https://github.com/hassox/warden/wiki/Testing
        login_as(user)
      end

      def sign_out_as(user)
        sign_out
      end

      def sign_out
        node = find(:xpath, "//form[contains(@action,'sign_out')]")
      rescue Capybara::Ambiguous
        # FIXME: this sucks, at least make the warning clearer, also look at
        # removing entirely or requiring explicit acceptance of first match
        warn "WARNING: #{$!.message}"
        node = first(:xpath, "//form[contains(@action,'sign_out')]")
      ensure
        within(node) do
          find(:css, "input[type='submit']").click
        end
      end

      def should_be_signed_in_as(user)
        should_see_sign_out
      end

      def should_see_sign_out
        should have_xpath("//form[contains(@action,'sign_out')]")
      end

    end
  end
end

World(Cucumber::FutureGov::DeviseHelper)

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
