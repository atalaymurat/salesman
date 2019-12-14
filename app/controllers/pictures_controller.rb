class PicturesController < ApplicationController
  before_action :set_product

  def destroy
    remove_picture_at_index(params[:id].to_i)
    flash[:error] = "Failed deleting image" unless @product.save
    flash[:warning] = "Image deleted successfully" if @product.save
    redirect_to edit_product_path(@product)
  end



  private
  def set_product
    @product = Product.find(params[:product_id])
  end

  def remove_picture_at_index(index)
    remain_pictures = @product.pictures
    if index == 0 && @product.pictures.size == 1
      @product.remove_pictures!
    else
      deleted_picture = remain_pictures.delete_at(index)
      deleted_picture.try(:remove!)
      @product.pictures = remain_pictures
      @product.save
    end
  end

end
