module Cucumber
  module FutureGov
    module Helpers
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
end

World(Cucumber::FutureGov::Helpers::ValidationHelper)
