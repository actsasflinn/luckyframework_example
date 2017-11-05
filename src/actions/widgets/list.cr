class Widgets::List < BaseAction
  get "/widgets" do
    widgets = WidgetQuery.all.results
    render widgets: widgets
  end
end

LuckyWeb::Router.add :get, "/", Widgets::List
