class Master::SpecialityController < ApplicationController

  layout 'admin'

  def index
    @specialities = Master::Speciality.sorted
  end

  def new
    @speciality = Master::Speciality.new
  end

  def create
    @speciality = Master::Speciality.new(speciality_params)
    if @speciality.save
      flash[:notice] = "Created New Speciality!"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @speciality = Master::Speciality.find(params[:id])  
  end

  def update
    @speciality = Master::Speciality.find(params[:id])
    if @speciality.update_attributes(speciality_params)
      flash[:notice] = "Updated Successfully!"
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end

  def delete
    @speciality = Master::Speciality.find(params[:id])
  end

  def destroy
    @speciality = Master::Speciality.find(params[:id])
    if @speciality.destroy
      flash[:notice] = "Deleted Successfully"
      redirect_to(:action => 'index')
    else
      render('delete')
    end
  end

  private
    def speciality_params
      params.require(:master_specialities).permit(:name, :description)
    end
end
