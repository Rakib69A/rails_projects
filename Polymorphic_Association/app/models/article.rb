class Article < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :poly_comments, as: :commentable
end
