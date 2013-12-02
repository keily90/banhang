class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  
  def cart
    
    number = params[:number].to_i
    productid = params[:productid].to_i
    @cart = Cart.new(:userid => current_user.id,:productid => productid,:number => number)
    @product = Product.find(productid)
    if(@cart.save && (@product.quantity > number))
       @product = Product.find(productid)
       @product.quantity = @product.quantity - params[:number].to_i
       @product.save
       flash[:success] = 'Success shopping cart' 
    else
       flash[:error] = 'Quantity not enough' 
    end
    redirect_to home_path
    
  end
  
  def home
    @products = Product.paginate(:page => params[:page], :per_page => 9,:order => "name") 
  end
  
  def search
     @products = Product.search(params[:search])
  end
  
  def index
@products = Product.paginate(:page => params[:page], :per_page => 10,:order => "name") 
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    handle_image_upload(params)
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product }
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    handle_image_upload(params)
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :info, :quantity,:image)
    end

    def handle_image_upload(params)
      if params[:image]
        uploaded_io = params[:image]
        File.open(Rails.root.join('public', 'images','products',
            uploaded_io.original_filename), 'wb') do |file|
          file.write(uploaded_io.read)
        end
        params[:product]['image'] = uploaded_io.original_filename
      end
    end  
    
end
