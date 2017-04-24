require 'sinatra'
require 'sinatra/reloader' if development?

enable :sessions



get('/') do
puts "hello"
	
	session[:score] ||= 0
	@score = session[:score]
	
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
@say = "you folded"
else
	if cards.index(session[:ccard]) < cards.index(session[:pcard])
		@say = "computer wins"
		session[:score] -= 1
	else
		@say = "you win"
		session[:score] += 1
	end
end
@score = session[:score]
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