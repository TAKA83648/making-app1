class ListsController < ApplicationController
  def new
    # Viewに渡すためのインスタンス変数に空のModelオブジェクトを生成する
    @list = List.new
  end
  
  def create
    # 1&2.データを受け取り新規登録するためのインスタンス作成
    list = List.new(list_params)
    # データをデータベースに保存するためのsaveメソッド
    list.save
    # トップ画面にリダイレクト
    redirect_to'/top'
  end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title,:body)
  end
end
