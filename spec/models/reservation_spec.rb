require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before :each do
    @user = User.new(username: 'test25', role: 'admin', email: 'a@a', password: '123456')
    @user.save

    @yacht = Yacht.new(name: 'Sports Yacht', description: 'Good Yacht', price: 100)
    @yacht.save
  end

  subject do
    @reservation = Reservation.new(city: 'New York', start_date: '2023-01-01', days_number: 5, user: @user,
                                   yacht: @yacht)
  end
  before { subject.save }

  describe 'validate data' do
    it 'should be valid' do
      expect(subject).to be_valid
    end
    it 'should validate city' do
      @reservation.city = 'New York'
      expect(subject).to be_valid
    end
    it 'should validate start_date (not valid)' do
      @reservation.start_date = '2023-01-01'
      expect(subject).to be_valid
    end
    it 'should validate days_number' do
      @reservation.days_number = 5
      expect(subject).to be_valid
    end
  end
end
