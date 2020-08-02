class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]


  def index
    @items = Item.all
    # @users = User.find(@item.users.name)
    # @user = @item.
  end

  def new
    @item = Item.new
    
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id if current_user

    if @item.save
      # user_id << current_user

      redirect_to root_path
    else
        render 'new'
    end
  end

  def edit
    
  end

  def destroy
    # if @item.user_id == current_user.id
    @item.destroy
    redirect_to root_path
    # end
  end

  private
  def item_params
    params.require(:item).permit(:id ,:rating ,:name, :introduce, :category, :brand, :price, :image, :created_at, :user_id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
