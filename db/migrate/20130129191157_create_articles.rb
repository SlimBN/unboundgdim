class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.timestamps :created_at
      t.timestamps :updated_at
      t.integer :page_id
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
