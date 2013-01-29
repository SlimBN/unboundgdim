class Category < ActiveRecord::Base
  attr_accessible :added_at, :content, :name, :official, :updated_at, :user_id
end
