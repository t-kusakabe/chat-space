require 'rails_helper'

describe 'User' do 
  describe 'validation' do
    context 'Is validation done?' do
      it 'Can save users' do
        user = build(:user)
        expect(user).to be_valid
      end

      it 'Can not save without name' do
        user = build(:user, name: '')
        user.valid?
        expect(user.errors[:name].first).to include('blank')
      end
    end
  end
end
