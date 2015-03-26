Then(/^I should see (?:a|some) validation error(?:s)?$/) do
  page.should have_xpath(
    "//*[@id='errorExplanation' or @id='error_explanation']"
  )
end

Then(/^I should not see (?:a|any) validation error(?:s)?$/) do
  page.should_not have_xpath(
    "//*[@id='errorExplanation' or @id='error_explanation']"
  )
end
