# frozen_string_literal: true

class CreateBreweryTable < ActiveRecord::Migration[5.2]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :location
    end
  end
end
