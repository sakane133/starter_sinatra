# frozen_string_literal: true

class BreweryController < Sinatra::Base
  set :views, 'app/views/breweries'

  get '/breweries' do
    @breweries = Brewery.all
    erb :index
  end
  get '/breweries/:id' do
    @brewery = Brewery.find(params[:id])
    erb :show
  end
end
