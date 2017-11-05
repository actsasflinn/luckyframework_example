class CreateWidgets::V20171104151506 < LuckyMigrator::Migration::V1
  def migrate
    create :widgets do
      add name : String
      add color : String?
      add count : Int32
    end
  end

  def rollback
    drop :widgets
  end
end
