require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'validations' do
    before(:each) do
      @user = User.create(username: 'test25', email: 'a@a', password: '123456', role: 'admin', profile_pic: 'test.jpg')
      @yacht = Yacht.create(name: 'Sports Yacht', description: 'Good Yacht', price: 100)
      @reservation = Reservation.create(city: 'New York', start_date: '2023-01-01', days_number: 5, user_id: @user.id,
                                        yacht_id: @yacht.id)
    end
    it 'should be valid' do
      expect(@reservation).to be_valid
    end
    it 'should calculate cost' do
      expect(@reservation.cost.to_i).to eq(500)
    end
    it 'should validate days_number' do
      @reservation.days_number = 0
      expect(@reservation).to_not be_valid
    end
    it 'should validate start_date (not valid)' do
      @reservation.start_date = '2020-01-01'
      expect(@reservation).to_not be_valid
    end
    it 'should validate start_date' do
      @reservation.start_date = '2023-01-01'
      expect(@reservation).to be_valid
    end
    it 'should validate city' do
      @reservation.city = nil
      expect(@reservation).to_not be_valid
    end
  end
end
