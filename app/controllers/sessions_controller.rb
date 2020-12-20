class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:session][:name])
    # find_byでparams[:session][:name]から該当するnameを取得
    if user && user.authenticate(params[:session][:password])
      # authenticate(params[:session][:password])で入力されたパスワードと該当のパスワードがあっているか確認
      session[:user_id] = user.id
      redirect_to mypage_path
    else
      render 'home/index'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
