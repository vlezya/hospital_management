require 'rails_helper'

RSpec.describe User, type: :model do
  context 'factories' do
    let(:user) { create(:user, password: 'password' ) }
    
    context 'valid factory' do
      it 'is expected to have a valid factory' do
        expect(user.valid?).to eq(true)
      end
    end
    
    context 'invalid factory' do
      it 'is expected to NOT valid without a first_name' do
        user.first_name = nil
        expect(user.valid?).to eq(false)
      end
      
      it 'is expected to NOT valid without a first_name' do
        user.last_name = nil
        expect(user.valid?).to eq(false)
      end
      
      it 'is expected to NOT valid without a phone' do
        user.phone = nil
        expect(user.valid?).to eq(false)
      end
      
      it 'is expected to NOT valid a password length' do
        user.password = 'error'
        expect(user.valid?).to eq(false)
      end
    end
  end
  
  context 'validations' do
    subject { build(:user, password: 'password') }
    
    context 'fields' do
      it { is_expected.to validate_presence_of(:first_name) }
      it { is_expected.to validate_presence_of(:last_name) }
      it { is_expected.to validate_presence_of(:phone) }
      it { is_expected.to validate_length_of(:phone) }
      it { is_expected.to validate_uniqueness_of(:phone).case_insensitive }
    end
  end
  
  context 'associations' do
    it { is_expected.to have_many(:appointments).dependent(:destroy) }
    it { is_expected.to have_and_belong_to_many(:doctors) }
  end
end
