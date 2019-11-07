require 'rails_helper'
describe User do
  describe '#create' do
    it "nickname, email, password, password_confirmationが揃えば登録できる" do
      user = build(:user)
      expect(user).to be_valid
    end
    it "nicknameが空欄では登録できないこと" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end
    it "emailが空欄では登録できないこと" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end
    it "passwordが空欄では登録できないこと" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end
    it "重複したemailが存在する場合登録できないこと" do
      #はじめにユーザーを登録
      user = create(:user)
      #先に登録したユーザーと同じemailの値を持つユーザーのインスタンスを作成
      another_user = build(:user)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end
    it "passwordが存在してもpassword_confirmationが空では登録できないこと" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とPasswordの入力が一致しません")
    end
    it "nicknameが11文字以上では登録できない" do
      user = build(:user, nickname: "aaaaabbbbbc")
      user.valid?
      expect(user.errors[:nickname]).to include("は10文字以下で入力してください")
    end
    it "nicknameが10文字以下では登録できる" do
      user = build(:user, nickname: "aaaaabbbbb")
      expect(user).to be_valid
    end
    it "passwordが6文字以上であれば登録できること" do
      user = build(:user, password: "123456", password_confirmation: "123456")
      user.valid?
      expect(user).to be_valid
    end
    it "passwordが5文字以下であれば登録できないこと" do
      user = build(:user, password: "12345", password_confirmation: "12345")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上で入力してください")
    end
    it "passwordが英数字以外であれば登録できないこと" do
      user = build(:user, password: "ああああああ", password_confirmation: "ああああああ")
      user.valid?
      expect(user.errors[:password]).to include("は半角英数字で入力してください")
    end
  end

end