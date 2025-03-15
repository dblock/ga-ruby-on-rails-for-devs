# frozen_string_literal: true

Fabricator(:employee) do
  name { Faker::Name.name }
  address { Faker::Address.street_address }
  start_date { Date.today }
end
