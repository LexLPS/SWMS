class SwmsController < ApplicationController
  before_action :set_swm, only: [:show, :edit, :update, :destroy]

  # GET /swms
  # GET /swms.json
  def index
    @swms = Swm.all
  end

  # GET /swms/1
  # GET /swms/1.json
  def show
  end

  # GET /swms/new
  def new
    @swm = Swm.new
  end

  # GET /swms/1/edit
  def edit
  end

  # POST /swms
  # POST /swms.json
  def create
    @swm = Swm.new(swm_params)

    respond_to do |format|
      if @swm.save
        format.html { redirect_to @swm, notice: 'Swm was successfully created.' }
        format.json { render :show, status: :created, location: @swm }
      else
        format.html { render :new }
        format.json { render json: @swm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swms/1
  # PATCH/PUT /swms/1.json
  def update
    respond_to do |format|
      if @swm.update(swm_params)
        format.html { redirect_to @swm, notice: 'Swm was successfully updated.' }
        format.json { render :show, status: :ok, location: @swm }
      else
        format.html { render :edit }
        format.json { render json: @swm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swms/1
  # DELETE /swms/1.json
  def destroy
    @swm.destroy
    respond_to do |format|
      format.html { redirect_to swms_url, notice: 'Swm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swm
      @swm = Swm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def swm_params
      params.fetch(:swm, {})
    end
end
