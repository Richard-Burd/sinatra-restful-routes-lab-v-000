class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  #get '/' do
  #  erb :index
  #end

  get '/recipes' do
    erb :index
  end

  get '/recipes/:id' do
    @recipes = Recipe.find(params[:id])
    erb :"recipes/show"
  end
end
