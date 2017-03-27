require 'sinatra'
require 'sinatra/reloader' if development?

enable :sessions



get('/') do
	#@cscore = -1
	#@pscore = -1
	#@pot = 2
	
	cards = ["K", "Q", "J"]
	scards = cards.shuffle
	@computer = scards[0]
	@player = scards[1]
	
	session[:pcard] = @player
	session[:ccard] = @computer
	
	erb :index
end

post('/') do
puts params[:strategy]
cards = ["K", "Q", "J"]
if params[:strategy] == "fold"
	@cscore = 1
	@pscore = -1
else
	if cards.index(session[:ccard]) < cards.index(session[:pcard])
		@cscore = 2
		@pscore = -2
		@say = "computer wins"
	else
		@cscore = -2
		@pscore = 2
		@say = "you win"
	end
end
erb :result
end









	#if cards.index(@computer) < cards.index(@player)
	#	@say = "computer wins"
	#	@cscore += 1
	#else
	#	@say = "you win"
	#	@pscore += 1
	#end
	#erb :index