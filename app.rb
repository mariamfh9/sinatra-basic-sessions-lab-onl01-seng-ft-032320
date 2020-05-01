require_relative 'config/environment'

class App < Sinatra::Base
  configure do 
    enable :sessions
    set :sessions_secret, "MySession"
  end 
  
  get '/' do 
    erb :index
  end 
  
  get '/checkout' do
      erb :checkout
   end

     post '/checkout' do
        @item = params[:item]
        session["item"] = @item
        
        erb :'checkout'
    end
end
  