class Widgets::Show < BaseAction
  get "/widgets/:id" do
    widget = WidgetQuery.new.find(params.get(:id))
    render widget: widget
  end
end
