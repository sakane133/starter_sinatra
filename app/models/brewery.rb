# frozen_string_literal: true

class Brewery < ActiveRecord::Base
  has_many :beers
end
