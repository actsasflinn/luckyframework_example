class Widgets::Index < BaseAction
  get "/widgets" do
    widgets = WidgetQuery.all.results
    render widgets: widgets
  end
end

