require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.new(Username: 'Iggy', Fullname: 'Ignatius Sani') }

  describe 'validations' do
    it { should validate_presence_of(:Username) }
  end

  describe 'associations' do
    it { should have_many(:opinions) }
    it { should have_many(:likes) }
  end

  context 'name should be valid' do
    it 'should require a name' do
      expect(FactoryBot.build(:user, Username: '')).not_to be_valid
    end

    it 'should accept letters in name' do
      expect(FactoryBot.build(:user, Username: 'Iggy', Fullname: 'Ignatius Sani')).to be_valid
    end
  end
end