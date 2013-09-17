class ProductsController < ApplicationController
before_filter :get_product, :only => [:show, :edit, :update, :destroy, :like, :unlike]
before_filter :ensure_logged_in, :only => [:like, :unlike]

  def index
    @products = Product.all

    respond_to do |format|
      format.html
      format.json { render json: @products }
    end
  end

  def show
    if current_user
      @review = @product.reviews.build
    end

    respond_to do |format|
      format.html
      format.json { render json: @product }
    end
  end

  def new
    @product = Product.new

    respond_to do |format|
      format.html
      format.json { render json: @product } 
    end   
  end

  def create
    @product = Product.create(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @product.update_attributes(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end  
  end

  def destroy
    @product.destroy
    
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end

  def like
    @product.users << current_user if !@product.users.include?(current_user)
    redirect_to @product
  end

  def unlike
    @product.users.destroy(current_user)
    redirect_to @product
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end

  def get_product
    @product = Product.find(params[:id])
  end
end