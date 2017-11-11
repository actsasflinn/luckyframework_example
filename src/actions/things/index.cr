class Things::Index < BrowserAction
  get "/things" do
    things = ThingQuery.all.results
    render things: things
  end
end
