class Api::V1::ItemsController < ApplicationController
  def index
    render json: Item.all
  end

  def show
    render json: Item.find(params[:id])
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    render :nothing => true, :status => 204
  end

  def create
    item = Item.new(item_params)
    if item.save
      render :status => 201
    else 
      flash[:error]= "The item was not created"
    end
  end

  private
    def item_params
      params.permit(:id, :name, :description, :image_url)
    end
end