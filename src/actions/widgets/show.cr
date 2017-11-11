class Widgets::Show < BrowserAction
  action do
    widget = WidgetQuery.new.find(id)
    render widget: widget
  end
end
