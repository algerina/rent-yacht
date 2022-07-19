require 'rails_helper'

RSpec.describe Yacht, type: :model do
  before :each do
    @user = User.new(username: 'test25', role: 'admin', email: 'a@a', password: '123456')
    @user.save
  end

  subject do
    Yacht.new(name: 'Sports Yacht', description: 'Good Yacht', price: 100 )
  end
  before { subject.save }

  describe 'validate data' do
    it 'it should have a name' do
      subject.name = 'SportsYacht'
      expect(subject).to be_valid
    end

    it 'it should have a description' do
      subject.description = 'Good Yacht'
      expect(subject).to be_valid
    end

    it 'it should have a price' do
      subject.price = 100
      expect(subject).to be_valid
    end
  end
end
