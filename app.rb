require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @text_from_user = params[:user_text]
    @text_from_user_downcase = @text_from_user.downcase
    erb :results
  end
end
