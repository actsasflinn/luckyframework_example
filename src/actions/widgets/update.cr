class Widgets::Update < BrowserAction
  action do
    widget = WidgetQuery.new.find(id)
    WidgetForm.update(widget, params) do |form, updated_widget|
     if updated_widget
       redirect to: Show.with(widget)
     else
       redirect to: Show.with(widget)
       render EditPage, widget_form: form, widget: updated_widget
     end
    end
  end
end
