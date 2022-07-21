require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.create(username: 'larry', role: 'admin', email: 'a@a', password: 'abc123')
  end
  before { subject.save }

  describe 'validate data' do
    it 'should have a valid username' do
      subject.username = 'larry'
      expect(subject).to be_valid
    end

    it 'should have a role' do
      subject.role = 'admin'
      expect(subject).to be_valid
    end

    it 'should have a valid email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'should have a valid password' do
      subject.password = 'abc123'
      expect(subject).to be_valid
    end
  end
end
