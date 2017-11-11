module Widgets::Components
  private def render_widget_form_fields(f)
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
  end
end
