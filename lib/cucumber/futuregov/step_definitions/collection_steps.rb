require_relative '../helpers/collection_helper'

Then(/^I should see a list of (\w+)$/) do |things|
  should_see_list_of things
end

Then(/^I should see a list of (\d+) (\w+)$/) do |count, things|
    should_see_list_of things, count: count
end
