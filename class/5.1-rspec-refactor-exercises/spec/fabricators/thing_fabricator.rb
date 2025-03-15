# frozen_string_literal: true

Fabricator(:thing) do
  name { Fabricate.sequence(:name) { |i| "Thing Number #{i}" } }
end
