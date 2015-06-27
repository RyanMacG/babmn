require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    describe 'valid users' do
      let(:user) { create(:user) }

      it { is_expected.to be_valid }
    end

    describe 'non-valid users' do
      let(:user) { create(:user, name: '') }

      it { is_expected.not_to be_valid }
    end
  end
end
