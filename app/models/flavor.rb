# frozen_string_literal: true

class Flavor < ActiveRecord::Base
  has_many :beer_flavors
  has_many :beers, through: :beer_flavors
end
