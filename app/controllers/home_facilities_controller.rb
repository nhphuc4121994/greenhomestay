class HomeFacilitiesController < ApplicationController
  before_action :set_home_facility, only: [:show, :update, :destroy]

  # GET /home_facilities
  def index
    @home_facilities = HomeFacility.all

    render json: @home_facilities
  end

  # GET /home_facilities/1
  def show
    render json: @home_facility
  end

  # POST /home_facilities
  def create
    @home_facility = HomeFacility.new(home_facility_params)

    if @home_facility.save
      render json: @home_facility, status: :created, location: @home_facility
    else
      render json: @home_facility.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /home_facilities/1
  def update
    if @home_facility.update(home_facility_params)
      render json: @home_facility
    else
      render json: @home_facility.errors, status: :unprocessable_entity
    end
  end

  # DELETE /home_facilities/1
  def destroy
    @home_facility.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_facility
      @home_facility = HomeFacility.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def home_facility_params
      params.permit(:home_id, :facility_id)
    end
end
