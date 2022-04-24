class Article < ApplicationRecord
  
  validates :title
  validates :body
  
  belongs_to :user
  has_many :comments
  
end
