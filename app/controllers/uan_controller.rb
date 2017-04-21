class UanController < ApplicationController
  def index
  end

  def profile
    @user = current_user
  end

  def users
    # @users = User.pluck(:id, :name, :username)
    @users = count_comments.uniq.to_json
  end

  private

  def count_comments
    User.all.each do |user|
      Comment.where(user_id: user.id)
    end
  end

end
