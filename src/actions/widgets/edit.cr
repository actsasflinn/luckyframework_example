class Widgets::Edit < BrowserAction
  action do
    widget = WidgetQuery.new.find(id)
    widget_form = WidgetForm.new(widget)
    render widget_form: widget_form, widget: widget
  end
end
