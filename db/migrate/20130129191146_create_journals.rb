class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.integer :category_id
      t.timestamps :started_at
      t.timestamps :updated_at

      t.timestamps
    end
  end
end
