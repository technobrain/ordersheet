class BusinessMastersController < ApplicationController
  before_action :set_business_master, only: [:show, :edit, :update, :destroy]

  # GET /business_masters
  # GET /business_masters.json
  def index
    @business_masters = BusinessMaster.all
  end

  # GET /business_masters/1
  # GET /business_masters/1.json
  def show
  end

  # GET /business_masters/new
  def new
    @business_master = BusinessMaster.new
  end

  # GET /business_masters/1/edit
  def edit
  end

  # POST /business_masters
  # POST /business_masters.json
  def create
    @business_master = BusinessMaster.new(business_master_params)

    respond_to do |format|
      if @business_master.save
        format.html { redirect_to @business_master, notice: 'Business master was successfully created.' }
        format.json { render 'show', status: :created, location: @business_master }
      else
        format.html { render 'new' }
        format.json { render json: @business_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_masters/1
  # PATCH/PUT /business_masters/1.json
  def update
    respond_to do |format|
      if @business_master.update(business_master_params)
        format.html { redirect_to @business_master, notice: 'Business master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render 'edit' }
        format.json { render json: @business_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_masters/1
  # DELETE /business_masters/1.json
  def destroy
    @business_master.destroy
    respond_to do |format|
      format.html { redirect_to business_masters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_master
      @business_master = BusinessMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_master_params
      params.require(:business_master).permit(:business_name)
    end
end
