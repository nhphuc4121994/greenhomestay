class HomesController < ApplicationController
  before_action :set_home, only: [:show, :update, :destroy]

  # GET /homes
  def index
    @homes = Home.select("homes.*").page(params[:page] ? params[:page][:number] : 1)

    render json: @homes, meta: pagination_meta(@homes)
  end
#GET /homes/type/:type_id
  def getHomeByType
    @home = Home.select("homes.*").where("home_type_id = ?", params[:type_id])
    render json: @home
  end


  def search
    address =  params[:address]
    name = params[:name]
    price = params[:price]
    accommodates = params[:accommodates]
    search_home = Home.select("homes.*")
    # search_home = Home.joins("INNER JOIN home_types ON homes.home_type_id = home_types.id INNER JOIN m_prefs ON homes.m_pref_id = m_prefs.id")
    search_home = Home.where('homes.address = ?', address) unless address.blank?
    search_home = Home.where('homes.name = ?', name) unless name.blank?
    # search_home = Home.where('rooms.price = ?', price) unless price.blank?
    search_home = Home.joins("LEFT JOIN rooms ON rooms.home_id = homes.id").where('rooms.price = ?', price) unless price.blank?
    search_home = Home.joins("LEFT JOIN rooms ON rooms.home_id = homes.id").where('rooms.accommodates = ?', accommodates) unless accommodates.blank?
    @home = search_home
    render json: @home
  end



  # GET /homes/1
  def show
    render json: @home
  end

  # POST /homes
  def create
    @home = Home.new(home_params)

    if @home.save
      render json: @home, status: :created, location: @home
    else
      render json: @home.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /homes/1
  def update
    if @home.update(home_params)
      render json: @home
    else
      render json: @home.errors, status: :unprocessable_entity
    end
  end

  # DELETE /homes/1
  def destroy
    @home.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
      @home = Home.select("homes.*").where('homes.id = ?',  params[:id])
     #  @room = Room.where("home_id = ?", params[:id])
     #
     # render json: @room.to_a << @home
     #  @home = Home.joins(:rooms).select("homes.*, rooms.*").where('homes.id = ?',  params[:id])
      render json: @home
    end

    # Only allow a trusted parameter "white list" through.
    def home_params
      params.permit(:name, :home_type_id, :m_pref_id, :description, :image, :address, :status)
    end

     private
  def pagination_meta(object)
    {
      current_page: object.current_page,
      next_page: object.next_page,
      prev_page: object.previous_page,
      total_pages: object.total_pages,
      total_count: object.total_entries
    }
  end
end
