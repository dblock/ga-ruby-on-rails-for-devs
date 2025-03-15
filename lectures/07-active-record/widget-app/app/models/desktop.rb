# frozen_string_literal: true

class Desktop < ActiveRecord::Base
  # Leverages polymorphic association to have many widgets
  has_many :widgets, as: :displayable
end
