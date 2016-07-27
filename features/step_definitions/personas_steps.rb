# encoding: UTF-8

Given /^there are a person with called "([^"]*)"$/ do |name|
  @person = Person.create(name: name)
end

Given(/^the person has a child called "([^"]*)"$/) do |name|
  @person.children << Person.create(name: name)
end

Then(/^"([^"]*)" is parent of "([^"]*)"$/) do |parent_name, child_name|
  parent = Person.find_by(name: parent_name)
  expect(parent.children.find_by(name: child_name).name).to eq(child_name)
end

Given(/^person with name "([^"]*)"$/) do |name|
  @person = Person.find_by(name: name)
end

Then(/^his parent is "([^"]*)"$/) do |parent_name|
  expect(@person.parent).to eq(parent_name)
end