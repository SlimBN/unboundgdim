class Journal < ActiveRecord::Base
  attr_accessible :category_id, :description, :started_at, :title, :updated_at, :user_id
end
