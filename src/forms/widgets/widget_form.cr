COLORS = %w[red orange yellow green blue purple violet indigo pink black brown gray white]
class WidgetForm < Widget::BaseForm
  allow name
  allow color
  allow count

  def prepare
    validate_inclusions_of color, COLORS #, "should be one of: #{COLORS.join(", ")}"
  end
end