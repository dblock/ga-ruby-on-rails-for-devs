# frozen_string_literal: true

class Thing < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
end
