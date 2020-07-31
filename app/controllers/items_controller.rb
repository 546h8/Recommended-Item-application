class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy, :purchase, :buy]


  def index
    @items = Item.all.order(created_at: :asc)
    # @users = User.find(@item.users.name)
    # @user = @item.
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    @item.users << current_user
    # @item.save
    redirect_to root_path
      
  end

  def edit
    
  end

  private
  def item_params
    params.require(:item).permit(:id ,:rating ,:name, :introduce, :category, :brand, :price, :image, :created_at)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
