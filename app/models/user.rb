class User < ApplicationRecord
  has_many :posts
  enum kind: [:salesman, :manager]
  enum state: [:active, :inactive]
  include Trestle::Auth::ModelMethods
  include Trestle::Auth::ModelMethods::Rememberable
end
