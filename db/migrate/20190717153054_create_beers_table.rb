# frozen_string_literal: true

class CreateBeersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :description
      t.integer :brewery_id
    end
  end
end
