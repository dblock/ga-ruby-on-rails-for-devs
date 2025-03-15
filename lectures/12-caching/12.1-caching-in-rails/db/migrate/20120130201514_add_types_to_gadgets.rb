# frozen_string_literal: true

class AddTypesToGadgets < ActiveRecord::Migration
  def change
    add_column :gadgets, :type, :string
  end
end
