class UsersController < ApplicationController
        def show
                @user = User.find(params[:id])
                @memos = Memo.where(user_id:params["id"])
        end
        def edit
                @user = User.find(params[:id])
                @memos = Memo.where(user_id:params["id"])
        end
end
