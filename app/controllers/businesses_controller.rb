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
  end
  #POST /articles
  def create
    @business = Business.new(name: params[:business][:name], slogan: params[:business][:slogan], description: params[:business][:description])
    #validaciones
    if @business.valid?
      @business.save
      redirect_to @business
    else
      render :new
    end
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    redirect_to businesses_path
  end
end
