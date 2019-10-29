class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    callback_for(:google)
  end

  def twitter
    callback_for(:twitter)
  end

  def callback_for(provider)
    @omniauth = (request.env["omniauth.auth"])
    @user = User.find_for_oauth(@omniauth)
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
    else
      session[:provider] = @user[:provider]
      session[:uid] = @user[:uid]
      render '/users/registrations/new'
    end
  end

  def failure
    redirect_to root_path
  end
end
