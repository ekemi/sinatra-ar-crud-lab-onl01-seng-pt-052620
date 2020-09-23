
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end
  get '/articles' do
    @articles = Article.all
    erb :index
  end

  get '/articles/:id' do
    @article = Article.find(params[:id])
    erb :show
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do

    redirect '/show'
  end

  get '/articles/:id/edit' do

  end

  path '/articles/:id' do
  end

  delete '/article/:id' do


  end
end
