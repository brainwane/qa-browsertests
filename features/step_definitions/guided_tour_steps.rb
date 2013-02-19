

When /^I append \?tour=gettingstarted to the page URL$/ do
  @browser.goto(@browser.url + '?tour=gettingstarted')
end

Then /^I should see the Ready to help guider$/ do
  on(TourPage).guider1_element.should exist
end

Given /^I am on a page with Ready to Help guider$/ do
  step 'I am at random page'
  step 'I append ?tour=gettingstarted to the page URL'
end

When /^I click Okay$/ do
  on(TourPage).okay_element.when_present.click
end

Then /^I should see a Click Edit guider$/ do
  on(TourPage).guider2_element.should exist
end

Given /^I am on a page with Click Edit guider$/ do
  step 'I am on a page with Ready to Help guider'
  step 'I click Okay'
end

When /^I click the Edit link on the wiki page$/ do
  on(TourPage).edit
end

Then /^I should see a Preview guider$/ do
  on(TourPage).guider3_element.should exist
end

Given /^I am on a page with Preview guider$/ do
  step 'I am on a page with Click Edit guider'
  step 'I click the Edit link on the wiki page'
end

When /^I click Show Preview on the wiki page$/ do
  on(TourPage).preview
end

Then /^I should see a You're almost finished guider$/ do
  on(TourPage).guider4_element.should exist
end




