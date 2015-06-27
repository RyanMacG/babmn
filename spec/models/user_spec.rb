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
      let(:user) { build(:user, name: '') }
      let(:user2) { build(:user, email: '') }
      let(:malformed_email) { build(:user, email: 'fooa[at]bar.com')}

      it 'will not be valid with missing fields' do
        expect(user).not_to be_valid
        expect(user2).not_to be_valid
      end

      it 'will ensure the email is in the correct format' do
        expect(malformed_email).not_to be_valid
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
