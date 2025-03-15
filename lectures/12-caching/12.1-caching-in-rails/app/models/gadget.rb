# frozen_string_literal: true

class Gadget < ActiveRecord::Base
  TYPES = %w[SidebarGadget HeaderGadget].freeze

  belongs_to :widget
  has_many :controls

  # Presence of type allows us to leverage Single Table Inheritance (STI)
  # in Rails. See SidebarGadget and HeaderGadget.
  validates :type, presence: true, inclusion: { in: TYPES }

  attr_accessible :type

  def info
    'regular old gadget'
  end
end
