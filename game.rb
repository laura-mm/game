require 'sinatra'

get('/') do

	@cscore = 0
	@pscore = 0

	cards = ["K", "Q", "J"]
	scards = cards.shuffle
	@computer = scards[0]
	@player = scards[1]

	if cards.index(@computer) < cards.index(@player)
		@say = "computer wins"
		@cscore += 1
		@win= false
	else
		@say = "you win"
		@pscore += 1
		@win= true
	end

	
	erb :index
end
