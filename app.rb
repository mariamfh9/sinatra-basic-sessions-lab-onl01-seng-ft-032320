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
      session[:item] = params[:item]
      @session = session
   redirect to "/checkout"
   end
end
  