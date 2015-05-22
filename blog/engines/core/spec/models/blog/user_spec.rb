require 'rails_helper'

module Blog
  RSpec.describe User, type: :model do
    context "factories" do
      it "has a valid factory" do
        expect(FactoryGirl.build(:blog_user)).to be_valid
      end

      it "has a valid aliases factory" do
        expect(FactoryGirl.build(:user)).to be_valid
      end
    end
  end
end
