class UanController < ApplicationController
  def index
  end

  def profile
    @user = current_user
  end

  def users
    @users = User.order(:comments_count).reverse_order
  end

  private

end
