class Widgets::EditPage < BasePage
  include Widgets::Components
  needs widget_form : WidgetForm
  needs widget : Widget

  render do
    render_widget_form(@widget_form, @widget)
    link "Back", to: Widgets::Index
  end

  private def render_widget_form(f, w)
    form_for Widgets::Update.with(w) do
      render_widget_form_fields(f)
      submit "Save Widget"
    end
  end
end