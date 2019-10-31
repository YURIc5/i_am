class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
        has_many :favorites, dependent: :destroy
        has_many :animals, through: :favorites
        has_one :profile

  def self.find_for_oauth(auth)
    #登録済みのUserか確認
    user = User.where(uid: auth.uid, provider: auth.provider).first
    #登録済みのUserではなかった場合
    unless user.present?
      password =  Devise.friendly_token[0,20]
      user = User.new(
        nickname: auth.info.name,
        email: auth.info.email,
        uid: auth.uid,
        provider: auth.provider,
      )
    end
    return user
  end
end
