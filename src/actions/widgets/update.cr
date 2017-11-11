class Widgets::Update < BrowserAction
  action do
    widget = WidgetQuery.new.find(id)
    WidgetForm.update(widget, params) do |form, updated_widget|
      if updated_widget
        redirect to: Show.with(updated_widget)
      else
        render EditPage, widget_form: form, widget: updated_widget
      end
    end
  end
end
