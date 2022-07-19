require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(username: 'test25', role: 'admin', email: 'a@a', password: '123456')
  end
  before { subject.save }

  describe 'validate data' do
    it 'should have a valid username' do
      subject.username = nil
      expect(subject).to_not be_valid
    end

    it 'should have a role' do
      subject.role = nil
      expect(subject).to_not be_valid
    end

    it 'should have a valid email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'should have a valid password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end
  end
end
