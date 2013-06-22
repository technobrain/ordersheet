class OrderInfosController < ApplicationController
  before_action :set_order_info, only: [:show, :edit, :update, :destroy]

  # GET /order_infos
  # GET /order_infos.json
  def index
    @order_info = OrderInfo.all
  end

  # GET /order_infos/1
  # GET /order_infos/1.json
  def show
  end

  # GET /order_infos/new
  def new
    @order_info = OrderInfo.new
  #  9.times { @order_infos.order_charge_people.build }
  #  @order_infos.order_charge_people.build
 #   3.times { @order_infos.order_break_times.build }
 #   3.times { @order_infos.order_dates.build }
    set_order_masters
  end

  # GET /order_infos/1/edit
  def edit
    set_order_masters
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
        set_order_masters
        format.html { render action: 'new' }
        format.json { render json: @order_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_infos/1
  # PATCH/PUT /order_infos/1.json
  def update
    respond_to do |format|
      if @order_info.update_attributes(order_info_params)
        format.html { redirect_to @order_info, notice: 'Order info was successfully updated.' }
        format.json { head :no_content }
      else
        set_order_masters
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
    params.require(:order_info).permit(:order_id, :company_id, :unit_id, :author, :revenue_unit_id, :project_id,
                                       :business_id, :contract_start_date, :contract_end_date, :work_place, :income_date,
                                       :payment_site_id, :work_start_date, :work_end_date, :other, :general_receipt_date,
                                       :general_order_date, :general_order_no, :general_other,
                                       :order_charge_people_attributes => [:id, :employee_id, :basic_amount, :time_limit_lower, :time_limit_upper, :deduction_bid, :overtime_bid, :_destroy],
                                       :order_break_times_attributes => [:id, :break_start_time, :break_end_time, :_destroy],
                                       :order_dates_attributes => [:id, :order_date, :_destroy]

    )
 #   params.require(:order_charge_person).permit(:employee_id, :basic_amount, :time_limit_lower, :time_limit_upper, :deduction_bid, :overtime_bid)
  end

  def set_order_masters
    @project_masters = ProjectMaster.all
    @business_masters = BusinessMaster.all
    @company_masters = CompanyMaster.all
    @employee_masters = EmployeeMaster.all
    @order_break_times = OrderBreakTime.all
    @payment_site_masters = PaymentSiteMaster.all
    @position_masters = PositionMaster.all
    @unit_masters = UnitMaster.all

  end
end
