# frozen_string_literal: true

Fabricator(:control) do
  name { sequence { |i| "Control #{i}" } }
end
