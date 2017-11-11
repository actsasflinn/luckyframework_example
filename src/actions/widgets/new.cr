class Widgets::New < BrowserAction
  action do
    widget_form = WidgetForm.new
    render widget_form: widget_form
  end
end
