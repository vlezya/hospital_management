require 'rails_helper'

RSpec.describe Doctor, type: :model do
  context 'factories' do
    let(:category) { create(:category) }
    let(:doctor) { create(:doctor, category_id: category.id, password: 'password' ) }
    
    context 'valid factory' do
      it 'is expected to have a valid factory' do
        expect(doctor.valid?).to eq(true)
      end
    end
    
    context 'invalid factory' do
      it 'is expected to NOT valid without a first_name' do
        doctor.first_name = nil
        expect(doctor.valid?).to eq(false)
      end
      
      it 'is expected to NOT valid without a first_name' do
        doctor.last_name = nil
        expect(doctor.valid?).to eq(false)
      end
      
      it 'is expected to NOT valid without a phone' do
        doctor.phone = nil
        expect(doctor.valid?).to eq(false)
      end
      
      it 'is expected to NOT valid a password length' do
        doctor.password = 'error'
        expect(doctor.valid?).to eq(false)
      end
    end
  end
  
  context 'validations' do
    let(:category) { create(:category) }
    subject { build(:doctor, category_id: category.id, password: 'password') }
    
    context 'fields' do
      it { is_expected.to validate_presence_of(:first_name) }
      it { is_expected.to validate_presence_of(:last_name) }
      it { is_expected.to validate_presence_of(:phone) }
      it { is_expected.to validate_length_of(:phone) }
      it { is_expected.to validate_uniqueness_of(:phone).case_insensitive }
    end
  end
  
  context 'associations' do
    it { is_expected.to belong_to(:category) }
    it { is_expected.to have_many(:appointments).dependent(:destroy) }
    it { is_expected.to have_and_belong_to_many(:users) }
  end
end
