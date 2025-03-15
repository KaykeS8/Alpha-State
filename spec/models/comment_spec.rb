require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "validations" do 
    it { should validate_presence_of(:description) }
  end
end
