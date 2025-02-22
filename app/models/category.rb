class Category < ApplicationRecord
    validates :kind, presence: true
    validates :kind, inclusion: {in: ["personal development", "philosophy", "neuroscience"]}
end
