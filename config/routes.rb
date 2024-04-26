Rails.application.routes.draw do

  get("/rock", {:controller => "rock", :action => "play_rock"})

end
