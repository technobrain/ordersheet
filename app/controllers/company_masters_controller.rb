class CompanyMastersController < ApplicationController
  before_action :set_company_master, only: [:show, :edit, :update, :destroy]

  # GET /company_masters
  # GET /company_masters.json
  def index
    @company_masters = CompanyMaster.all
  end

  # GET /company_masters/1
  # GET /company_masters/1.json
  def show
  end

  # GET /company_masters/new
  def new
    @company_master = CompanyMaster.new
  end

  # GET /company_masters/1/edit
  def edit
  end

  # POST /company_masters
  # POST /company_masters.json
  def create
    @company_master = CompanyMaster.new(company_master_params)

    respond_to do |format|
      if @company_master.save
        format.html { redirect_to @company_master, notice: 'Company master was successfully created.' }
        format.json { render action: 'show', status: :created, location: @company_master }
      else
        format.html { render action: 'new' }
        format.json { render json: @company_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_masters/1
  # PATCH/PUT /company_masters/1.json
  def update
    respond_to do |format|
      if @company_master.update(company_master_params)
        format.html { redirect_to @company_master, notice: 'Company master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @company_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_masters/1
  # DELETE /company_masters/1.json
  def destroy
    @company_master.destroy
    respond_to do |format|
      format.html { redirect_to company_masters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_master
      @company_master = CompanyMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_master_params
      params.require(:company_master).permit(:company_cd, :company_name, :division_name, :charge_person, :contact, :tel_no)
    end
end
