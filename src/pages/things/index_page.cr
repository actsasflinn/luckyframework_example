class Things::IndexPage < BasePage
  needs things : Array(Thing)

  @page_title = "Thing"

  render do
    table class: "things" do
      th "ID"
      th "Title"
      th "Description"
      th "Created At"
      th "Updated At"
      @things.each do |thing|
        tr class: "thing" do
          td thing.id.to_s
          td thing.title
          td thing.description.to_s
          td thing.created_at.to_s
          td thing.updated_at.to_s
        end
      end
    end
  end
end