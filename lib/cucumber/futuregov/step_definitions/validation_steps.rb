require_relative '../helpers/validation_helper'

Then(/^I should see (?:a|some) validation error(?:s)?$/) do
  should_see_validation_error
end

Then(/^I should not see (?:a|any) validation error(?:s)?$/) do
  should_not_see_validation_error
end
