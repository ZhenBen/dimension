class PathController < ApplicationController
  before_action :load_user

  def index
  end

  def paths
    unless @user
      redirect_to url_for(:controller => :users, :action => :login)
    end
  end

  def data_center
  end

  private

  def load_user
    @user = User.find_by_id(session[:current_user_id])
  end
end
