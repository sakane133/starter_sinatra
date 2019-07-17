class BeerController < Sinatra::Base
 set :views, 'app/views/beers'
    get '/beers' do
        @beers = Beer.all
        erb :index
    end

    get '/beers/:id' do
        @beer = Beer.find(params[:id])
        erb :show
    end

    get '/beers/new' do
        erb :new
    end

    post '/beers' do
        Beer.create(name: params[:name], description: params[:description], brewery_id: params[:brewery_id])
        redirect '/beers'
    end

end