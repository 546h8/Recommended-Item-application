class ItemsController < ApplicationController
  # before_action :set_category, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_item, only: [:show, :edit, :update, :destroy, :purchase, :buy]


  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
    # @item = Item.new(item_params)
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
