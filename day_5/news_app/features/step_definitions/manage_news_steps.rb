Given /^I am on the home page$/ do
 visit '/'
end

Then /^I should see "(.*?)"$/ do |arg1|
 page.should have_content arg1
end

Given /^I follow "(.*?)"$/ do |arg1|
 click_link arg1
end

Given /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2|
 
end

Given /^I press "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should be on the home page$/ do
  pending # express the regexp above with the code you wish you had
end
