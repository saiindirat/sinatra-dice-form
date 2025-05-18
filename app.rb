require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/process_roll") do
  @dice = params["dice"].to_i
  @sides = params["sides"].to_i
  @rolls = []

  @dice.times do
    @rolls.push(rand(1..@sides))
  end

  erb(:roll_results)
end
