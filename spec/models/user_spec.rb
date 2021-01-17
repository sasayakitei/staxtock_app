require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'valid?' do
    context 'email, password, password_confirmationが入力されている、かつnameが空白の場合' do
      it 'ユーザー情報は有効である' do
        user = build(:user)
        expect(user).to be_valid
      end
    end
    context 'emailが空白の場合' do
      it 'ユーザー情報は無効である' do
        user = build(:user, email: '')
        expect(user).to be_invalid
      end
    end
    context 'emailに"@"が含まれていない場合' do
      it 'ユーザー情報は無効である' do
        user = build(:user, email: Faker::Internet.email.delete('@'))
        expect(user).to be_invalid
      end
    end
    context 'password, password_confirmationが空白の場合' do
      it 'ユーザー情報は無効である' do
        user = build(:user, password: '', password_confirmation: '')
        expect(user).to be_invalid
      end
    end
    context 'password, password_confirmationが不一致の場合' do
      it 'ユーザー情報は無効である' do
        original_password  = Faker::Internet.password(min_length: 6)
        different_password = original_password + 'hoge'
        user = build(:user, password: original_password, password_confirmation: different_password)
        expect(user).to be_invalid
      end
    end
    context 'nameが25文字の場合' do
      it 'ユーザー情報は有効である' do
        user = build(:user, name: 'A' * 25)
        expect(user).to be_valid
      end
    end
    context 'nameが26文字の場合' do
      it 'ユーザー情報は無効である' do
        user = build(:user, name: 'A' * 26)
        expect(user).to be_invalid
      end
    end
  end
end
