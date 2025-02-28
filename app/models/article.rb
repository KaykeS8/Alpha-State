class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_rich_text :content
  has_one_attached :cover

  validates :title, presence: true
end
