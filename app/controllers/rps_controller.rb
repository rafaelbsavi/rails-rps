class RpsController < ApplicationController
  def homepage
    render({:template => "game_templates/homepage"})
  end
  
  def play_rock
    possible_results = ["rock", "paper", "scissors"] 
    they_result = possible_results.sample
  
    @our_result = "We played rock!"
    @their_result = "They played #{they_result}!"
  
    if they_result == "rock"
      @final_result = "We tied!"
    elsif they_result == "paper"
      @final_result = "We lost!"
    elsif they_result == "scissors"
      @final_result = "We won!"
    end
    render({:template => "game_templates/play_rock"})
  end

  def play_paper
    possible_results = ["rock", "paper", "scissors"] 
    they_result = possible_results.sample
  
    @our_result = "We played paper!"
    @their_result = "They played #{they_result}!"
  
    if they_result == "rock"
      @final_result = "We won!"
    elsif they_result == "paper"
      @final_result = "We tied!"
    elsif they_result == "scissors"
      @final_result = "We lost!"
    end
    render({:template => "game_templates/play_paper"})
  end

  def play_scissors
    possible_results = ["rock", "paper", "scissors"] 
    they_result = possible_results.sample
  
    @our_result = "We played scissors!"
    @their_result = "They played #{they_result}!"
  
    if they_result == "rock"
      @final_result = "We lost!"
    elsif they_result == "paper"
      @final_result = "We won!"
    elsif they_result == "scissors"
      @final_result = "We tie!"
    end
    render({:template => "game_templates/play_scissors"})
  end


end
