class CastlesController < ApplicationController
  before_action :set_castle, only: [:show, :edit, :update, :destroy]

  # GET /castles
  def index
    @castles = Castle.all

    # identify the closest castles
    if params[:location].present?
      @castles = Castle.near(params[:location], 10000)
    else
      @castles = Castle.all
    end

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@castles[0..9]) do |castle, marker|
      marker.lat castle.latitude
      marker.lng castle.longitude

      marker.infowindow render_to_string(partial: "/castles/map_box", locals: {castle: castle})
    end
  end

  # GET /castles/1
  def show
    @castle = Castle.find(params[:id])
    @castle_coordinates = { latitude: @castle.latitude, longitude: @castle.longitude }
    @alert_message = "You are viewing #{@castle.name}"
    # pictures models
  end


  # GET /castles/new
  def new
    @castle = Castle.new
  end

  # GET /castles/1/edit
  def edit
  end

  # POST /castles
  # POST /castles.json
  def create
    @castle = Castle.new(castle_params)

    respond_to do |format|
      if @castle.save
        format.html { redirect_to @castle, notice: 'Castle was successfully created.' }
        format.json { render :show, status: :created, location: @castle }
      else
        format.html { render :new }
        format.json { render json: @castle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /castles/1
  # PATCH/PUT /castles/1.json
  def update
    respond_to do |format|
      if @castle.update(castle_params)
        format.html { redirect_to @castle, notice: 'Castle was successfully updated.' }
        format.json { render :show, status: :ok, location: @castle }
      else
        format.html { render :edit }
        format.json { render json: @castle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /castles/1
  # DELETE /castles/1.json
  def destroy
    @castle.destroy
    respond_to do |format|
      format.html { redirect_to castles_url, notice: 'Castle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_castle
      @castle = Castle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def castle_params
      params[:castle]
    end
end
