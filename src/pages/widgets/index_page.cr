class Widgets::IndexPage < BasePage
  needs widgets : Array(Widget)

  @page_title = "Widgets"

  render do
    render_list(@widgets)
    render_footer
  end

  private def render_list(widgets)
    table class: "widgets" do
      th "ID"
      th "Name"
      th "Color"
      th "Count"
      th "Created At"
      th "Updated At"
      th "Actions"
      widgets.each do |widget|
        tr class: "widget" do
          td widget.id.to_s
          td widget.name
          td widget.color.to_s
          td widget.count.to_s
          td widget.created_at.to_s
          td widget.updated_at.to_s
          td do
            link "Show", to: Show.with(widget)
            text " | "
            link "Edit", to: Edit.with(widget)
            text " | "
            link "Delete", to: Delete.with(widget)
          end
        end
      end
    end
  end

  private def render_footer
    link "New", to: New
  end
end