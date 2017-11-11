class Widgets::Delete < BrowserAction
  action do
    widget = WidgetQuery.new.find(id)
    widget.delete
    redirect to: Index
  end
end
