class Admin::UsersController < ApplicationController
 def index
    @users = User.all.order(created_at: :desc)
  end

  private
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
