class Widgets::Index < BrowserAction
  get "/widgets" do
    widgets = WidgetQuery.all.results
    render widgets: widgets
  end
end

