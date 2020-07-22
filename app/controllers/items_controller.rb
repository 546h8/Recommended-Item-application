class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @items = Item.new
  end

  # def create
  #   Item.create(item_params)
  # end

  private
  # def item_params
  #   params.requre(:item).premit(:name, :text, :price, :rating, :link, :created_at)
  # end
end
