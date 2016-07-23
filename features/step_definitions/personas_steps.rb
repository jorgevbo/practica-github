# encoding: UTF-8

Dado(/^los datos de una familia:$/) do |table|
  table.hashes.each do |row|
    parent = Person.find_or_create_by(name: row[:parent_name])
    parent.children.create(name: row[:child_name])
  end
end

Cuando(/^obtenemos a la persona "([^"]*)"$/) do |name|
  @person = Person.find_by(name: name)
end

Entonces(/^esta persona debe tener "([^"]*)" hijos$/) do |num_hijos|
  expect(@person.children.size).to be(num_hijos.to_i)
end

Entonces(/^esta persona debe tener "([^"]*)" nieto$/) do |num_nietos|
  count = 0
  @person.children.each do |child|
    count += child.children.size
  end

  expect(count).to eq(num_nietos.to_i)
end