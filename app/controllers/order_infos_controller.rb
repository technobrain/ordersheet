class OrderInfosController < ApplicationController
  before_action :set_order_info, only: [:show, :edit, :update, :destroy]

  # GET /order_infos
  # GET /order_infos.json
  def index
    @order_infos = OrderInfo.all
  end

  # GET /order_infos/1
  # GET /order_infos/1.json
  def show
  end

  # GET /order_infos/new
  def new
    set_order_masters
  end

  # GET /order_infos/1/edit
  def edit
  end

  # POST /order_infos
  # POST /order_infos.json
  def create
    @order_info = OrderInfo.new(order_info_params)

    respond_to do |format|
      if @order_info.save
        format.html { redirect_to @order_info, notice: 'Order info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @order_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @order_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_infos/1
  # PATCH/PUT /order_infos/1.json
  def update
    respond_to do |format|
      if @order_info.update(order_info_params)
        format.html { redirect_to @order_info, notice: 'Order info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_infos/1
  # DELETE /order_infos/1.json
  def destroy
    @order_info.destroy
    respond_to do |format|
      format.html { redirect_to order_infos_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_order_info
    @order_info = OrderInfo.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def order_info_params
    params.require(:order_info).permit(:order_no, :company_cd, :unit_cd, :author, :revenue_unit_code, :project_cd, :business_cd, :contract_start_date, :contract_nd_date, :work_place, :income_date, :payment_site, :work_start_date, :work_end_date, :other, :general_receipt_date, :general_order_date, :general_order_no, :geneal_other)
  end

  def set_order_masters
    @order_info = OrderInfo.new
    @project_master = ProjectMaster.all
    @business_master = BusinessMaster.all
    @company_masters = CompanyMaster.all
    @employee_master = EmployeeMaster.all
    @order_break_time = OrderBreakTime.all
    @payment_site_master = PaymentSiteMaster.all

  end
end
