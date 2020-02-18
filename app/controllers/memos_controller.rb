class MemosController < ApplicationController
  def index
    #トップページにアクセスされた時のアクション
    @memos = Memo.all
    @categories = Category.all
  end

  def new
    #新規メモ作成ページ
    @categories = Category.all
  end

  def create
    #データが送信された後に表示
    Memo.create(title:params["memos"]["title"],body:params["memos"]["body"],category_id:params["memos"]["category_id"])
    redirect_to "/memos/index"
  end
  def destroy
    memo=Memo.find(params["id"])
    memo.destroy
    redirect_to "/memos/index"
  end
  def edit
    @memo = Memo.find(params["id"])
  end
  def update
    memo = Memo.find(params["id"])
    memo.title = params["memos"]["title"]
    memo.body = params["memos"]["body"]
    memo.category_id = params["memos"]["category_id"]
    memo.save
    redirect_to "/memos/index"
  end
end
