# frozen_string_literal: true

class AddPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :encrypted_password, :string
  end

  def self.down
    remove_column :users, :encrypted_password
  end
end
