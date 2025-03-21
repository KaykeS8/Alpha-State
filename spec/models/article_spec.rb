require 'rails_helper'

RSpec.describe Article, type: :model do
  context "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description)}
    it { should validate_presence_of(:cover) }
  end

  context "associations" do 
    it { should belong_to(:user) }
    it { should belong_to(:category)}
  end
end
