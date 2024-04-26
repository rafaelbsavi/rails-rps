class RockController < ApplicationController
  def play_rock
    render({:plain => "howdy"})
  end
end
