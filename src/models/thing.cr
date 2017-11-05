class Thing < BaseModel
  table :things do
    field title : String
    field description : String?
  end
end