# frozen_string_literal: true

class CreateBeerFlavorTable < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_flavors do |t|
      t.integer :beer_id
      t.integer :flavor_id
    end
  end
end
