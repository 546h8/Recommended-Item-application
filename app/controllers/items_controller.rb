class ItemsController < ApplicationController
  before_action :set_category, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_item, only: [:show, :edit, :update, :destroy, :purchase, :buy]


  def get_category_children
    @category_children = Category.find(params[:parent_name]).children
  end

  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end

  def index
    @items = Item.all
  end

  def new
    @items = Item.new
  end

  def create
    Item.create(item_params)
  end

  private
  def set_category
    @category_parent_array = Category.where(ancestry: nil)
  end

  def item_params
    params.requre(:item).premit(:name, :text, :price, :rating, :link, :created_at)
  end
end
