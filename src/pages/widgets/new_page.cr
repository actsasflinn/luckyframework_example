class Widgets::NewPage < BasePage
  include Widgets::Components
  needs widget_form : WidgetForm

  render do
    render_widget_form(@widget_form)
    link "Back", to: Widgets::Index
  end

  private def render_widget_form(f)
    form_for Widgets::Create do
      render_widget_form_fields(f)
      submit "Save Widget"
    end
  end
end