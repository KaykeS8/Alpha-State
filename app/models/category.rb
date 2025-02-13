class Category < ApplicationRecord
    validates :kind, presence: true, inclusion: {in: ["Philosophy", "Person development", "Neuroscience"], message: '%{value} is not valid' }
    has_many :articles
end
