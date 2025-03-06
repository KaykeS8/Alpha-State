class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  belongs_to :article

  validates :description, presence: true

  scope :recent, -> { order(created_at: :desc)}
end
