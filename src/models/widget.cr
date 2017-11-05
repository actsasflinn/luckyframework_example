class Widget < BaseModel
  table :widgets do
    field name : String
    field color : String?
    field count : Int32
  end
end