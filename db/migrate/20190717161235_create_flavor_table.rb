# frozen_string_literal: true

class CreateFlavorTable < ActiveRecord::Migration[5.2]
  def change
    create_table :flavors do |t|
      t.string :name
    end
  end
end
