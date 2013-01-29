class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :content
      t.integer :user_id
      t.boolean :official
      t.timestamps :added_at
      t.timestamps :updated_at

      t.timestamps
    end
  end
end
