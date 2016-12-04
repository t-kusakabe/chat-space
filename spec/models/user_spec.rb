require 'rails_helper'

describe 'User' do 
  describe 'validation' do
    it 'can save user' do
      user = build(:user)
      expect(user).to be_valid
    end

    it 'can not save without name' do
      user = build(:user, name: '')
      user.valid?
      expect(user.errors[:name]).to include('を入力してください')
    end
  end
end
