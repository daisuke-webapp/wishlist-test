class ListsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy]
  
  def create
    list = current_user.lists.build(list_params)
    #if list.item_code == list.itemcode
      #flash[:danger] = 'リストに登録済みのアイテムです'
      #redirect_back(fallback_location: root_path)
    #elsif
    if list.save
      flash[:success] = 'リストに追加しました'
      redirect_back(fallback_location: root_path)
    else
     flash[:danger] = 'リストへの追加に失敗しました'
     redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @list.destroy
    flash[:success] = 'リストから削除しました'
    redirect_back(fallback_location: root_path)
  end
  
  private
  
  # Strong Parameter
  def list_params
    params.require(:list).permit(:image_url, :name, :url, :price, :item_code)
  end
  
  def correct_user
    @list = current_user.lists.find_by(id: params[:id])
    unless @list
      redirect_to root_url
    end
  end
end
