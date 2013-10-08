class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to test_index_path(format: :html)
  end

  def destroy
    session[:user_id] = nil
    redirect_to test_index_path(format: :html)
  end
end
