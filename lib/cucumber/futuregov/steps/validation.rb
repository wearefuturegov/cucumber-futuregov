module Cucumber
  module FutureGov
    module ValidationHelper

      def should_see_validation_error
        page.should have_xpath(
          "//*[@id='errorExplanation' or @id='error_explanation']"
        )
      end

      def should_not_see_validation_error
        page.should_not have_xpath(
          "//*[@id='errorExplanation' or @id='error_explanation']"
        )
      end

    end
  end
end

World(Cucumber::FutureGov::ValidationHelper)

Then(/^I should see (?:a|some) validation error(?:s)?$/) do
  should_see_validation_error
end

Then(/^I should not see (?:a|any) validation error(?:s)?$/) do
  should_not_see_validation_error
end
