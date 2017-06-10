class MPrefsController < ApplicationController
  before_action :set_m_pref, only: [:show, :update, :destroy]

  # GET /m_prefs
  def index
    @m_prefs = MPref.all

    render json: @m_prefs
  end

  # GET /m_prefs/1
  def show
    render json: @m_pref
  end

  # POST /m_prefs
  def create
    @m_pref = MPref.new(m_pref_params)

    if @m_pref.save
      render json: @m_pref, status: :created, location: @m_pref
    else
      render json: @m_pref.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /m_prefs/1
  def update
    if @m_pref.update(m_pref_params)
      render json: @m_pref
    else
      render json: @m_pref.errors, status: :unprocessable_entity
    end
  end

  # DELETE /m_prefs/1
  def destroy
    @m_pref.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_pref
      @m_pref = MPref.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def m_pref_params
      params.permit(:pref_name)
    end
end
