class EmployeeMastersController < ApplicationController
  before_action :set_employee_master, only: [:show, :edit, :update, :destroy]

  # GET /employee_masters
  # GET /employee_masters.json
  def index
    @employee_masters = EmployeeMaster.all
  end

  # GET /employee_masters/1
  # GET /employee_masters/1.json
  def show
  end

  # GET /employee_masters/new
  def new
    @employee_master = EmployeeMaster.new
    set_masters;
  end

  # GET /employee_masters/1/edit
  def edit
    set_masters;
  end

  # POST /employee_masters
  # POST /employee_masters.json
  def create
    @employee_master = EmployeeMaster.new(employee_master_params)

    respond_to do |format|
      if @employee_master.save
        format.html { redirect_to @employee_master, notice: 'Employee master was successfully created.' }
        format.json { render action: 'show', status: :created, location: @employee_master }
      else
        format.html { render action: 'new' }
        format.json { render json: @employee_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_masters/1
  # PATCH/PUT /employee_masters/1.json
  def update
    respond_to do |format|
      if @employee_master.update(employee_master_params)
        format.html { redirect_to @employee_master, notice: 'Employee master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @employee_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_masters/1
  # DELETE /employee_masters/1.json
  def destroy
    @employee_master.destroy
    respond_to do |format|
      format.html { redirect_to employee_masters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_master
      @employee_master = EmployeeMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_master_params
      params.require(:employee_master).permit(:employee_cd, :employee_name, :employee_name_kana, :position_id, :unit_id, :email_address1, :emai_address2, :postal_cd, :address1, :address2, :tel_no, :fax_no, :mobile_tel_no1, :mobile_tel_no2, :emergency_tel_no, :birth_date, :station, :birth_place, :education_level, :other)
    end
    def set_masters
        @position_masters = PositionMaster.all
        @unit_masters = UnitMaster.all
    end
end
