require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    describe 'valid users' do
      let(:user) { build(:user) }

      it 'will be valid' do
        expect(user).to be_valid
      end
    end

    describe 'non-valid users' do

      it " will not be valid without a name" do
        expect(build(:user, name: '')).not_to be_valid
      end

      it "will not be valid without an email" do
        expect(build(:user, email: '')).not_to be_valid
      end

      it "will not be valid without a password" do
        expect(build(:user, password: nil)).not_to be_valid
      end

      it 'will ensure the email is in the correct format' do
        expect(build(:user, email: "foo[@]bar.com")).not_to be_valid
      end

    end

    describe 'email validations' do
      let(:user) { create(:user) }
      let(:user2) { build(:user, email: user.email.upcase) }

      it 'will not let duplicate emails be signed up' do
        expect(user2).not_to be_valid
      end
    end
  end
end
