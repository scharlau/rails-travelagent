class HarboursController < ApplicationController
  before_action :set_harbour, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found
  
  # GET /harbours
  # GET /harbours.json
  def index
    @harbours = Harbour.all
  end

  # GET /harbours/1
  # GET /harbours/1.json
  def show
  end

  # GET /harbours/new
  def new
    @harbour = Harbour.new
  end

  # GET /harbours/1/edit
  def edit
  end

  # POST /harbours
  # POST /harbours.json
  def create
    @harbour = Harbour.new(harbour_params)

    respond_to do |format|
      if @harbour.save
        format.html { redirect_to @harbour, notice: 'Harbour was successfully created.' }
        format.json { render :show, status: :created, location: @harbour }
      else
        format.html { render :new }
        format.json { render json: @harbour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /harbours/1
  # PATCH/PUT /harbours/1.json
  def update
    respond_to do |format|
      if @harbour.update(harbour_params)
        format.html { redirect_to @harbour, notice: 'Harbour was successfully updated.' }
        format.json { render :show, status: :ok, location: @harbour }
      else
        format.html { render :edit }
        format.json { render json: @harbour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harbours/1
  # DELETE /harbours/1.json
  def destroy
    @harbour.destroy
    respond_to do |format|
      format.html { redirect_to harbours_url, notice: 'Harbour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harbour
      @harbour = Harbour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def harbour_params
      params.require(:harbour).permit(:name, :country, :lat, :long)
    end
end
