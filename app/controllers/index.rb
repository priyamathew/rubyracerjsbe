get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/create_game' do
  p params[:player1]
  p params[:player2]
  @player1 = Player.create!(name: params[:player1])
  @player2 = Player.create!(name: params[:player2])
  p @player1          
  p @player2
  @game = Game.create(players: [@player1, @player2])

  redirect "/game/#{@player1.id}/#{@player2.id}/start"
end

get '/game/:player1/:player2/start' do
  @player1 = Player.find_by_id(params[:player1])
  @player2 = Player.find_by_id(params[:player2])

  erb :play_game
end

# #if response.xhr?
#   layout: false
#   @player1.to_json + "You won!"
