require_relative 'config/environment'

class App < Sinatra::Base
    get "/" do
        erb :user_input
    end
    post "/piglatinize" do
        user_input_text = params[:user_phrase]
        new_word = PigLatinizer.new
        @latinized = new_word.piglatinize(user_input_text)
        erb :show
    end
end