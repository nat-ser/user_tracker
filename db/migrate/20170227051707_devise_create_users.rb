# frozen_string_literal: true
class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.timestamps null: false
      t.string :name
      t.string :fave_game
    end

    add_index :users, :email, unique: true
  end
end
