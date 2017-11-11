class Widgets::Create < BrowserAction
  action do
    WidgetForm.save(params) do |form, widget|
     if widget
       redirect to: Show.with(widget)
     else
       render NewPage, widget_form: form
     end
    end
  end
end
