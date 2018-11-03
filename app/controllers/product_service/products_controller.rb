class ProductService::ProductsController < ApplicationController
  before_action :set_product_service_product, only: [:show, :edit, :update, :destroy]

  # GET /product_service/products
  # GET /product_service/products.json
  def index
    @product_service_products = ProductService::Product.all
  end

  # GET /product_service/products/1
  # GET /product_service/products/1.json
  def show
  end

  # GET /product_service/products/new
  def new
    @product_service_product = ProductService::Product.new
  end

  # GET /product_service/products/1/edit
  def edit
  end

  # POST /product_service/products
  # POST /product_service/products.json
  def create
    @product_service_product = ProductService::Product.new(product_service_product_params)

    respond_to do |format|
      if @product_service_product.save
        format.html { redirect_to @product_service_product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product_service_product }
      else
        format.html { render :new }
        format.json { render json: @product_service_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_service/products/1
  # PATCH/PUT /product_service/products/1.json
  def update
    respond_to do |format|
      if @product_service_product.update(product_service_product_params)
        format.html { redirect_to @product_service_product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_service_product }
      else
        format.html { render :edit }
        format.json { render json: @product_service_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_service/products/1
  # DELETE /product_service/products/1.json
  def destroy
    @product_service_product.destroy
    respond_to do |format|
      format.html { redirect_to product_service_products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_service_product
      @product_service_product = ProductService::Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_service_product_params
      params.require(:product_service_product).permit(:name, :price)
    end
end
