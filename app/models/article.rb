class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_rich_text :content

  validates :title, presence: true
  validates :description, presence: true
  validates :cover, presence: true
end
