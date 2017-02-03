Rails.application.routes.draw do
  get("/guesses", {:controller => "guesses", :action => "show_guesses"})
  get("/guesses/new", {:controller => "guesses", :action => "new_form"})
  get("/guesses/:guess_id", {:controller => "guesses", :action => "show_guess_by_id"})
  get("/create_guess", {:controller => "guesses", :action => "create_guess"})
  get("/guesses/:guess_id/edit", {:controller => "guesses", :action => "edit_guess"})
  get("/guesses/:guess_id/rewrite", {:controller => "guesses", :action => "rewrite"})

end
