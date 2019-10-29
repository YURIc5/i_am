class Users::RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
  end

  def create
      # sns認証
    if session[:uid].present? && session[:provider].present?
      password = Devise.friendly_token.first(10)
      @user = User.new(
        nickname: params[:user][:nickname], 
        email: params[:user][:email],
        password: password,
        password_confirmation: password,
        provider: session[:provider],
        uid: session[:uid]
      )
    else
      # email登録
      @user = User.new(
        nickname:  params[:user][:nickname], 
        email:  params[:user][:email],
        password:  params[:user][:password],
        password_confirmation:  params[:user][:password_confirmation]
      )
    end
    if @user.save
      # ログインするための情報を保管
      session[:id] = @user.id
      sign_in(@user)
      redirect_to :root
    else
      render '/users/registrations/new'
    end
  end

  private
  # 許可するキーを設定
  def user_params
    params.require(:user).permit(
      :nickname, 
      :email, 
      :password, 
      :password_confirmation
    )
  end
end
