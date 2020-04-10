class ExhibitionsController < ApplicationController
  before_action :set_exhibition, except: [:index, :new, :create]

  def index
    @exhibitions = Exhibition.includes(:images).order('created_at DESC')
  end

  def new
    @exhibition = Exhibition.new
    @exhibition.images.new
  end
  
  def create
    Exhibition.create(exhibition_params)
    redirect_to exhibitions_path
  end

  def edit
  end

  def update
    if @exhibition.update(exhibition_params)
      redirect_to exhibitions_path
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def exhibition_params
    params.require(:exhibition).permit(:name, :explanation, :brand, :price, :status_id, :shipping_method_id, :shipping_date_id, :category_id, :prefecture_id, images_attributes:  [:image_url, :_destroy, :id]).merge(user_id: current_user.id)
  end

  def set_exhibition
    @exhibition = Exhibition.find(params[:id])
  end
end
