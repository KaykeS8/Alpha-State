require 'rails_helper'

RSpec.describe Category, type: :model do
  context "validations" do 
    it { should validate_presence_of(:kind) }
    it { is_expected.to validate_inclusion_of(:kind).in_array(["personal development", "philosophy", "neuroscience"])}
  end

  context "associations" do 
    it { should have_many(:articles)}
  end
end
