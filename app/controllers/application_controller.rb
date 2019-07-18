# frozen_string_literal: true

class ApplicationController < Sinatra::Base

    set :views, "app/views"
    set :method_override, true

    get "/" do 
        erb :home
    end

    get "/about" do
        erb :about
    end 

end
