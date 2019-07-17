# frozen_string_literal: true

class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :beer_flavors
  has_many :flavors, through: :beer_flavors
end
