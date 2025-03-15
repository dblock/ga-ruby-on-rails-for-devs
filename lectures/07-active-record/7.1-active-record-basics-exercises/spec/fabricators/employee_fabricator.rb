# frozen_string_literal: true

Fabricator(:employee) do
  name { Faker::Name.name }
  # TODO: populate other values
end
