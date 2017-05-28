class RoomFacilitiesController < ApplicationController
  before_action :set_room_facility, only: [:show, :update, :destroy]

  # GET /room_facilities
  def index
    @room_facilities = RoomFacility.all

    render json: @room_facilities
  end

  # GET /room_facilities/1
  def show
    render json: @room_facility
  end

  # POST /room_facilities
  def create
    @room_facility = RoomFacility.new(room_facility_params)

    if @room_facility.save
      render json: @room_facility, status: :created, location: @room_facility
    else
      render json: @room_facility.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /room_facilities/1
  def update
    if @room_facility.update(room_facility_params)
      render json: @room_facility
    else
      render json: @room_facility.errors, status: :unprocessable_entity
    end
  end

  # DELETE /room_facilities/1
  def destroy
    @room_facility.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_facility
      @room_facility = RoomFacility.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def room_facility_params
      params.require(:room_facility).permit(:room_id, :facility_id)
    end
end
