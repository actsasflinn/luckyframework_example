class CreateThings::V20171104192441 < LuckyMigrator::Migration::V1
  def migrate
    create :things do
      add title : String
      add description : String?
    end
  end

  def rollback
    drop :things
  end
end
