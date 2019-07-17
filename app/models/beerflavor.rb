# frozen_string_literal: true

class BeerFlavor < ActiveRecord::Base
  belongs_to :beer
  belongs_to :flavor
end
