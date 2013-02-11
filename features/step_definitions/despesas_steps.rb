"# encoding: utf-8"

Transform /^table:Phone,Value,Expense$/ do |table|
  table.hashes.map do |hash|
    phone = Phone.find_or_create_by_number!({number: hash["Phone"]})
    expense = Expense.find_or_create_by_data!({data: hash["Expense"], value: hash["Value"]})
    {phone: phone, expense: expense}
  end
end

Given /^the following users$/ do |table|
  table.hashes.map do |hash|
    phone = Phone.find_or_create_by_number!({number: hash["Phone"],
																						 user: hash["User"],
																						 email: hash["Email"]
    																			 })
    phone.save
  end
  puts Phone.all
	
end

Given /^the following expenses$/ do |table|
  # table is a Cucumber::Ast::Table
  table.each do |group|
    expense = group[:expense]
    associations = {phone: group[:phone]}
    expense.update_attributes(associations)
  end
  puts Expense.all
end

Then /^an email should be sent to 'Foo' with his two expense sheets attached$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^an email should be sent to 'Bar' with his expense sheet attached$/ do
  pending # express the regexp above with the code you wish you had
end

