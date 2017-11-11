class Widgets::Show < BaseAction
  get "/widgets/:id" do
    widget = WidgetQuery.new.find(id)
    render widget: widget
  end
end
