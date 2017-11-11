abstract class BasePage
  include LuckyWeb::Page

  # You can put assigns here that all pages need
  #
  # Example:
  #   assign current_user : User

  macro inherited
    layout MainLayout
  end

  @page_title : String?

  def page_title
    title_path = ["Lucky"]
    title_path << @page_title.to_s unless @page_title.nil?
    title_path.join("::")
  end

  def errors_for(field : LuckyRecord::AllowedField)
    # Customize the markup and styles to match your application
    unless field.valid?
      div class: "error" do
        text "#{field.name.to_s.capitalize} #{field.errors.join(", ")}"
      end
    end
  end
end
