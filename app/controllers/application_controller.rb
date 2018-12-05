class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      User.new
    end
  end

  def logged_in?
    !!current_user.id
  end

  def authorized?
    if !logged_in?
      flash[:authorized] = "The Bandroid Police would like to politely inform you that you have to log in before you can do that!"
      redirect_to login_path and return
    end
  end

  def authorized_for(user_id)
    if current_user.admin == true || current_user.id == user_id.to_i
      true
    elsif current_user.id != user_id.to_i
      flash[:authorized] = "The Bandroid Police would like to politely inform you that you're not authorized to view that!"
      redirect_to musicians_path
    end
  end

end
