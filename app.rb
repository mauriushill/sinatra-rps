require "sinatra"
require "sinatra/reloader"

get("/") do
erb( :homepage)

end


get("/rock") do
moves = ["rock", "paper", "scissors"]

@compu_move = moves.sample

if @compu_move == "rock"
  @outcome = "tied"
elsif @compu_move == "scissors"
@outcome = "won"
else 
  @outcome = "lost"
end

 erb( :lion)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]
  
  @compu_move = moves.sample
  
  if @compu_move == "paper"
    @outcome = "tied"
  elsif @compu_move == "rock"
  @outcome = "won"
  else 
    @outcome = "lost"
  end
  
   erb( :monkey)
  end

  get("/scissors") do
    moves = ["rock", "paper", "scissors"]
    
    @compu_move = moves.sample
    
    if @compu_move == "scissors"
      @outcome = "tied"
    elsif @compu_move == "paper"
    @outcome = "won"
    else 
      @outcome = "lost"
    end
    
     erb( :tiger)
    end
