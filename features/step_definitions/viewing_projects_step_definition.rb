

Given /^there is a project called "(.*?)"$/ do |name|
  FactoryGirl.create(:project, :name => name)
end

Then /^I should be on the project page for "(.*?)"$/ do |title|
  pending "Implement later"
end
