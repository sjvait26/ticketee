Given /^I am on the homepage$/ do
  visit '/' 
end

When /^I follow "(.*?)"$/ do |arg1|
  click_link(arg1) 
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |name, name_value|
  fill_in(name, :with => name_value)
end

When /^I press "(.*?)"$/ do |create_project|
  click_button(create_project) 
end

Then /^I should see "(.*?)"$/ do |content|
  page.should have_content(content)
end

