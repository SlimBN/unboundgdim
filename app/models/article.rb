class Article < ActiveRecord::Base
	belongs_to :user
  attr_accessible :category_id, :content, :created_at, :page_id, :title, :updated_at, :user_id
end
