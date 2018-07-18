class Master::CityController < ApplicationController

  layout 'admin'

  def index
    @cities = Master::City.sorted
  end

  def new
    @city = Master::City.new
  end

  def create
    @city = Master::City.new(page_params)
    if @city.save
      flash[:notice] = "City Created Successfully!"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end
  
  def edit
    @city = Master::City.find(params[:id])
  end

  def update
    @city = Master::City.find(params[:id])
    if @city.update_attributes(page_params)
      flash[:notice] = "Updated!"
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end

  def delete
    @city = Master::City.find(params[:id])
  end

  def destroy
    @city = Master::City.find(params[:id])
    if @city.destroy
      flash[:notice] = "Deleted"
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end


  private

    def page_params
      params.require(:master_cities).permit(:name, :status_id)
    end
end
