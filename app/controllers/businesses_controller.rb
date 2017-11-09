class BusinessesController < ApplicationController
  #GET /business
  def index
    #Variables de clase inciian con @ (vista y controller)
    @businesses = Business.all
  end
  #GET /business/:id
  def show
    @business = Business.find(params[:id])
  end

  #GET business/new
  def new
    @business = Business.new
    @business.address = Address.new
  end

  #GET /business/:id/edit
  def edit
    @business = Business.find(params[:id])
  end

  #POST /business
  def create
    @business = Business.new(business_params)
    #validaciones
    if @business.valid?
      @business.save
      redirect_to @business
    else
      render :new
    end
  end

  #DELETE /business/:id
  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    redirect_to businesses_path
  end

  #PUT /business/:id
  def update
    @business = Business.find(params[:id])
    if @business.update(business_params)
      redirect_to @business
    else
      render :edit
    end
  end

  private
  def business_params
    #parametros permitidos desde la vista, los sensibles no se permiten
    #permit id de direccion: If you don't permit the id, it will be null in the action, and rails thinks it's a new record and save it.
    params.require(:business).permit(:name,:slogan,:description, :business_type_id, :tag_list, :cover, address_attributes:[:id,:street,:ext_number,:int_number,:postal_code,:latitude,:longitude,:colony,:municipality,:state])
  end

end
