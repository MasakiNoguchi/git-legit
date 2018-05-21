class ChangeKnowledgeLevelToString < ActiveRecord::Migration[5.2]
  def change
    change_column :knowledges, :level, :string
  end
end
