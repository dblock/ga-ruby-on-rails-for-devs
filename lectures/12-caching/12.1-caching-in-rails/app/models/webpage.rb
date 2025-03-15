# frozen_string_literal: true

class Webpage < ActiveRecord::Base
  # Leverages polymorphic association to have many widgets
  has_many :widgets, as: :displayable
end
