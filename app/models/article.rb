class Article < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  belongs_to :category
  has_many :comments, dependent: :destroy

  has_rich_text :content
  has_one_attached :cover

  validates :title, presence: true
  validates :cover, presence: true
end
