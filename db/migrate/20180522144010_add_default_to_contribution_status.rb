class AddDefaultToContributionStatus < ActiveRecord::Migration[5.2]
  def change
    change_column :contributions, :status, :string, default: "open"
  end
end
