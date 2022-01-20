class TmpZonesController < ApplicationController
  before_action :set_tmp_zone, only: %i[ show edit update destroy ]

  # GET /tmp_zones or /tmp_zones.json
  def index
    @tmp_zones = TmpZone.all
  end

  # GET /tmp_zones/1 or /tmp_zones/1.json
  def show
  end

  # GET /tmp_zones/new
  def new
    @tmp_zone = TmpZone.new
  end

  # GET /tmp_zones/1/edit
  def edit
  end

  # POST /tmp_zones or /tmp_zones.json
  def create
    @tmp_zone = TmpZone.new(tmp_zone_params)

    respond_to do |format|
      if @tmp_zone.save
        format.html { redirect_to tmp_zone_url(@tmp_zone), notice: "Tmp zone was successfully created." }
        format.json { render :show, status: :created, location: @tmp_zone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tmp_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tmp_zones/1 or /tmp_zones/1.json
  def update
    respond_to do |format|
      if @tmp_zone.update(tmp_zone_params)
        format.html { redirect_to tmp_zone_url(@tmp_zone), notice: "Tmp zone was successfully updated." }
        format.json { render :show, status: :ok, location: @tmp_zone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tmp_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tmp_zones/1 or /tmp_zones/1.json
  def destroy
    @tmp_zone.destroy

    respond_to do |format|
      format.html { redirect_to tmp_zones_url, notice: "Tmp zone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tmp_zone
      @tmp_zone = TmpZone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tmp_zone_params
      params.require(:tmp_zone).permit(:title)
    end
end
