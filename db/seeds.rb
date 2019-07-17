# frozen_string_literal: true

Brewery.delete_all
Flavor.destroy_all
BeerFlavor.destroy_all
Beer.destroy_all

require 'faker'

20.times do
  Flavor.create(name: Faker::Food.fruits)
end
10.times do
  brewery = Brewery.create(name: Faker::Beer.brand, location: Faker::Address.country)
  5.times do
    beer = Beer.create(name: Faker::Beer.name, description: Faker::Hipster.paragraph, brewery_id: brewery.id)

    BeerFlavor.create(beer_id: beer.id, flavor_id: Flavor.all.sample.id)
    BeerFlavor.create(beer_id: beer.id, flavor_id: Flavor.all.sample.id)
  end
end
