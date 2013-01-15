class StaticPagesController < ApplicationController
  def home
    if signed_in?
      redirect_to dashboard_path
    end
  end

  def help
  end

  def about
  end

  def dashboard

    if signed_in?
      @classrooms = Classroom.where(:user_id => current_user).all
    else
      redirect_to signin_path
    end
  end

end
