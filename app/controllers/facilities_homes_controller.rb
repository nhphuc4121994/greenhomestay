class FacilitiesHomesController < ApplicationController
  before_action :set_facilities_home, only: [:show, :update, :destroy]

  # GET /facilities_homes
  def index
    @facilities_homes = FacilitiesHome.all

    render json: @facilities_homes
  end

  # GET /facilities_homes/1
  def show
    render json: @facilities_home
  end

  # POST /facilities_homes
  def create
    @facilities_home = FacilitiesHome.new(facilities_home_params)

    if @facilities_home.save
      render json: @facilities_home, status: :created, location: @facilities_home
    else
      render json: @facilities_home.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /facilities_homes/1
  def update
    if @facilities_home.update(facilities_home_params)
      render json: @facilities_home
    else
      render json: @facilities_home.errors, status: :unprocessable_entity
    end
  end

  # DELETE /facilities_homes/1
  def destroy
    @facilities_home.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facilities_home
      @facilities_home = FacilitiesHome.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def facilities_home_params
      params.permit(:home_id, :facility_id)
    end
end
