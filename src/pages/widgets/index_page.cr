class Widgets::IndexPage < BasePage
  needs widgets : Array(Widget)

  @page_title = "Widgets"

  render do
    render_list(@widgets)
  end

  private def render_list(widgets)
    table class: "widgets" do
      th "ID"
      th "Name"
      th "Color"
      th "Count"
      th "Created At"
      th "Updated At"
      widgets.each do |widget|
        tr class: "widget" do
          td widget.id.to_s
          td do
            link widget.name, to: Show.with(widget)
          end
          td widget.color.to_s
          td widget.count.to_s
          td widget.created_at.to_s
          td widget.updated_at.to_s
        end
      end
    end
  end
end