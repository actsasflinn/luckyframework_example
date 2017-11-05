class Things::List < BaseAction
  get "/things" do
    things = ThingQuery.all.results
    render things: things
  end
end
