require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Model Name validation tests' do
    it 'should have name present' do
      subject.name = 'Tom'
      expect(subject).to be_valid
    end

    it 'should not have name field empty, if then' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
end
