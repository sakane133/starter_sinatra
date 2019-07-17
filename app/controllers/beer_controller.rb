# frozen_string_literal: true

class BeerController < Sinatra::Base
  set :views, 'app/views/beers'
  set :method_override, true

  get '/beers' do
    @beers = Beer.all
    erb :index
  end

  get '/beers/new' do
    @flavors = Flavor.all
    @breweries = Brewery.all
    erb :new
  end

  get '/beers/:id' do
    @beer = Beer.find(params[:id])
    erb :show
  end

  post '/beers' do
    beer = Beer.create(name: params[:name], description: params[:description], brewery_id: params[:brewery_id])
    params[:flavors].each do |flavor, fid|
      BeerFlavor.create(beer_id: beer.id, flavor_id: fid)
    end
    redirect "/beers/#{beer.id}"
  end

  get '/beers/:id/edit' do
    @breweries = Brewery.all
    @flavors = Flavor.all
    @beer = Beer.find(params[:id])
    erb :edit
  end

  patch '/beers/:id' do
    beer = Beer.find(params[:id])
    beer.update(name: params[:name], description: params[:description], brewery_id: params[:brewery_id])
    beer.flavors.destroy_all
    params[:flavors].each do |flavor, fid|
      BeerFlavor.create(beer_id: beer.id, flavor_id: fid)
    end
    redirect "/beers/#{beer.id}"
  end

  delete '/beers/:id' do
    beer = Beer.find(params[:id])
    beer.destroy
    redirect '/beers'
  end
end
