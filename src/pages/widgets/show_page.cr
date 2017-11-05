class Widgets::ShowPage < BasePage
  needs widget : Widget

  render do
    div class: "field" do
      strong "ID:"
      span @widget.id.to_s
    end
    div class: "field" do
      strong "Name:"
      span @widget.name
    end
    div class: "field" do
      strong "Color:"
      span @widget.color.to_s
    end
    div class: "field" do
      strong "Count:"
      span @widget.count.to_s
    end
    div class: "field" do
      strong "Created At:"
      span @widget.created_at.to_s
    end
    div class: "field" do
      strong "Updated At:"
      span @widget.updated_at.to_s
    end

    a href: "/" do
      button "Back"
    end
  end
end