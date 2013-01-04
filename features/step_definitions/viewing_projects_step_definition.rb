Given /^there is a project called "(.*?)"$/ do |name|
  FactoryGirl.create(:project, :name => name)
end

Then /^I should be on the project page for "(.*?)"$/ do |arg1|
    pending # express the regexp above with the code you wish you had
end

