class Widgets::EditPage < BasePage
  needs widget_form : WidgetForm
  needs widget : Widget

  render do
    render_widget_form(@widget_form, @widget)
    link "Back", to: Widgets::Index
  end

  private def render_widget_form(f, w)
    form_for Widgets::Update.with(w) do
      div class: "field" do
        label_for f.name
        text_input f.name
        errors_for f.name
      end

      div class: "field" do
        label_for f.color
        text_input f.color
        errors_for f.color
      end

      div class: "field" do
        label_for f.count
        text_input f.count
        errors_for f.count
      end

      submit "Save Widget"
    end
  end
end