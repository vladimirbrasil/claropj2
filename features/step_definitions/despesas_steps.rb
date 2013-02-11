"# encoding: utf-8"

Transform /^table:User,Email,Phone$/ do |table|
  table.hashes.map do |hash|
    user = User.find_or_create!({name: hash["User"]})
    # user.email = {data: hash["Email"]}
    phone = Phone.find_or_create!({number: hash["Phone"]})
    {phone: phone, user: user}
  end
end

Transform /^table:Phone,Value,Expense$/ do |table|
  table.hashes.map do |hash|
    phone = Phone.find_or_create!({name: hash["Phone"]})
    # value = Phone.find_or_create!({number: hash["Value"]})
    expense = Expense.create!({data: hash["Expense"]})
    {phone: phone, expense: expense}
  end
end

Given /^a user named '(.*?)' with email 'vladimir\.brasil2@gmail\.com' and phones '(.*?)' and '(.*?)'$/ do |nome, email, tel1, tel2|
  pending # express the regexp above with the code you wish you had
end

Given /^the following users$/ do |table|
  # table is a Cucumber::Ast::Table
  table.each do |group|
    phone = group[:phone]
    associations = {user: group[:user]}
    phone.update_attributes(associations)
  end
end

Given /^the following expenses$/ do |table|
  # table is a Cucumber::Ast::Table
  table.each do |group|
    expense = group[:expense]
    associations = {phone: group[:phone]}
    expense.update_attributes(associations)
  end
end

Then /^an email should be sent to 'Foo' with his two expense sheets attached$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^an email should be sent to 'Bar' with his expense sheet attached$/ do
  pending # express the regexp above with the code you wish you had
end

