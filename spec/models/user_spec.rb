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

      it 'will not be valid' do
        expect(user).not_to be_valid
      end
    end
  end
end
