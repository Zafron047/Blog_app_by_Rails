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

  describe 'User Model counter validation tests' do
    it 'posts_counter must be an integer otherwise' do
      subject.posts_counter = 'You are not an integer'
      expect(subject).to_not be_valid
    end

    it 'posts_counter should be greater than or equal to zero' do
      subject.posts_counter = -2
      expect(subject).to_not be_valid

      subject.posts_counter = 0
      expect(subject).to be_valid
      
      subject.posts_counter = 2
      expect(subject).to be_valid
    end
  end
end
