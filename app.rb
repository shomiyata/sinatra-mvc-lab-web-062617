require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    pig_word = PigLatinizer.new
    @manipulated_text = pig_word.to_pig_latin(params[:user_phrase])
    erb :results
  end
end
