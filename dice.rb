# /dice.rb

require "sinatra"
require "sinatra/reloader" # so I dont have to ctrl + c everytime I make a change
require "better_errors"#debug tool
require "binding_of_caller"#debug tool

get("/") do
  erb(:testing, {:layout => :wrapper})
end

get("/zebra") do
  "We must add a route for each path we want to support"
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  erb(:two_six, {:layout => :wrapper})
end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die
	
  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  erb(:two_ten, {:layout => :wrapper})
end

get("/dice/1/20") do
  @die = rand(1..20)

  @outcome = "You rolled a #{@die}."

  erb(:one_twenty)
end

get("/dice/5/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  fifth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die + fifth_die
	
  @outcome = "You rolled #{first_die}, #{second_die}, #{third_die}, #{fourth_die}, #{fifth_die} for a total of #{sum}."
	
  erb(:five_four, {:layout => :wrapper})
end
