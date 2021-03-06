class Nutritionist::ProfileController < ApplicationController

  layout 'admin'

  before_action :find_city 

  def index
    @nutritionists = Nutritionist::Profile.sorted
  end

  def new
        @nutritionist = Nutritionist::Profile.new
      @masterCities = Master::City.all
      @masterSpecialities = Master::Speciality.all
  end

  def create
    @nutritionist = Nutritionist::Profile.new(nutritionist_params)
    @masterCities = Master::City.all
    @masterSpecialities = Master::Speciality.all

    if @nutritionist.save
      flash[:notice] = "Nutritionist Created Successfully."
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @nutritionist = Nutritionist::Profile.find(params[:id])
    @masterCities = Master::City.all
    @masterSpecialities = Master::Speciality.all

  end

  def update
    @nutritionist = Nutritionist::Profile.find(params[:id])
    @masterCities = Master::City.all
    @masterSpecialities = Master::Speciality.all

    specialities = Nutritionist::NutritionistSpecialityRel.where(nutritionist_id: @nutritionist.id)
    specialities.delete_all if specialities.present?

    params[:nutritionist_profiles][:specialities].each do |id|
        Nutritionist::NutritionistSpecialityRel.create(nutritionist_id: @nutritionist.id, speciality_id: id)
    end

    if @nutritionist.update_attributes(nutritionist_params)
      flash[:notice] = "Updated Successfully"
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end

  def delete
    @nutritionist = Nutritionist::Profile.find(params[:id])
  end

  def destroy
    @nutritionist = Nutritionist::Profile.find(params[:id])
    if @nutritionist.destroy
      flash[:notice] = "Deleted Successfully"
      redirect_to(:action => 'index')
    else
      render('delete')
    end
  end

  def show
  end

  private

  def find_city
    if params[:city_id]
      @cities = Master::City.find(params[:city_id])
    end
  end

  def nutritionist_params
    params.require(:nutritionist_profiles).permit(:name, :mobile_no, :email, :counsultation_fees, :experience, :work_history, :gender_id, :dob, :about, :awards, :ntuitive_user_id, :city_id, :avatar)
  end

end
