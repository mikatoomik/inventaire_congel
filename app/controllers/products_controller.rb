class ProductsController < ApplicationController

  def index
    @products = Product.all
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    redirect_to :root
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to :root
  end


  private

  def product_params
    params.require(:product).permit(:quantity, :name, :entered_on, :photo)
  end
end
