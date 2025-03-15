# frozen_string_literal: true

class AddDescriptionToThings < ActiveRecord::Migration
  def change
    add_column :things, :description, :string
  end
end
