class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
      if @user.present?
          pass = BCrypt::Password.new(@user.password_digest)
          if pass == params[:user][:password]
          session[:user_id] = @user.id
          redirect_to root_path
          else
            redirect_to new_session_path
          end
      end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

end
