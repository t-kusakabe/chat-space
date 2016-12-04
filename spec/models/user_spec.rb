require 'rails_helper'

describe 'User' do 
  describe '#create' do
    context 'バリデーションができているか' do
      it 'ユーザを保存できる' do
        user = build(:user)
        expect(user).to be_valid
      end

      it 'nameがないと保存できないか' do
        user = build(:user, name: '')
        user.valid?
        expect(user.errors[:name].first).to include('blank')
      end
    end
  end
end
