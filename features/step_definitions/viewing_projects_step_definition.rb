Given /^there is a project called "(.*?)"$/ do |name|
  FactoryGirl.create(:project, :name => name)
end

Then /^I should be on the project page for "(.*?)"$/ do |title|
  response.should have_selector("title:contains('#{title} - Projects - Ticketee')")
end

