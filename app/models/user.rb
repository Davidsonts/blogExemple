class User < ApplicationRecord
  has_many :posts
  enum kind: [:salesman, :manager]
  enum state: [:active, :inactive]
end
