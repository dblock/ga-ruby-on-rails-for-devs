# frozen_string_literal: true

class AddDockIndexToGadgets < ActiveRecord::Migration
  def change
    add_column :gadgets, :dock_index, :integer
  end
end
