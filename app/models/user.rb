class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_many :articles
  has_many :comments, dependent: :destroy
  has_one :profile, dependent: :destroy
end 