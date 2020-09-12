class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  enum state: [:active, :inactive]
end
