class CreateContributions < ActiveRecord::Migration[5.2]
  def change
    create_table :contributions do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.text :description
      t.string :title
      t.integer :status
      t.text :guidelines
      t.date :end_on

      t.timestamps
    end
  end
end
