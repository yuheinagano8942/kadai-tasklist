class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @user = current_user.tasks.build
      @task = current_user.tasks.order('created_at DESC').page(params[:page])
    end
  end
end
