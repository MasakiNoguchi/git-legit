class ChangeContributionStatusToString < ActiveRecord::Migration[5.2]
  def change
    change_column :contributions, :status, :string
  end
end
