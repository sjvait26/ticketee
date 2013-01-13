Given /^that project has a ticket:$/ do |table|
  table.hashes.each do |attr|
    @project.tickets.create!(attr)
  end
end
