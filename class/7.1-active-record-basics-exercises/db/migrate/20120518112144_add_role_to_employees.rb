# frozen_string_literal: true

class AddRoleToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :role_id, :integer
  end
end
