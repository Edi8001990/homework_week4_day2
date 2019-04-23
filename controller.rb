require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game.rb')

also_reload('./models/*')


get "/" do
  erb (:home)
end

get "/about-game" do
  erb (:about_game)
end

get '/check_win/:hand1/:hand2' do
 hand1 = params[:hand1].to_s
 hand2 = params[:hand2].to_s
 get_result = RPSGame.check_win(hand1, hand2)
 @result = get_result
 erb( :result )

end
