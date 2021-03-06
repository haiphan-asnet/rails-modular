require 'rails_helper'

module Blog
  RSpec.describe User, type: :model do
    context "factories" do
      it "has a valid factory" do
        expect(build(:blog_user)).to be_valid
      end

      it "has a valid aliases factory" do
        expect(build(:user)).to be_valid
      end
    end

    context "validations" do
      it { is_expected.to validate_presence_of(:email) }
      it { is_expected.to validate_uniqueness_of(:email) }
    end
  end
end
