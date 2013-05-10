class OrderChargePeopleController < ApplicationController
  before_action :set_order_charge_person, only: [:show, :edit, :update, :destroy]

  # GET /order_charge_people
  # GET /order_charge_people.json
  def index
    @order_charge_people = OrderChargePeople.all
  end

  # GET /order_charge_people/1
  # GET /order_charge_people/1.json
  def show
  end

  # GET /order_charge_people/new
  def new
    @order_charge_person = OrderChargePeople.new
  end

  # GET /order_charge_people/1/edit
  def edit
  end

  # POST /order_charge_people
  # POST /order_charge_people.json
  def create
    @order_charge_person = OrderChargePeople.new(order_charge_person_params)

    respond_to do |format|
      if @order_charge_person.save
        format.html { redirect_to @order_charge_person, notice: 'Order charge person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @order_charge_person }
      else
        format.html { render action: 'new' }
        format.json { render json: @order_charge_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_charge_people/1
  # PATCH/PUT /order_charge_people/1.json
  def update
    respond_to do |format|
      if @order_charge_person.update(order_charge_person_params)
        format.html { redirect_to @order_charge_person, notice: 'Order charge person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order_charge_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_charge_people/1
  # DELETE /order_charge_people/1.json
  def destroy
    @order_charge_person.destroy
    respond_to do |format|
      format.html { redirect_to order_charge_people_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_charge_person
      @order_charge_person = OrderChargePeople.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_charge_person_params
      params.require(:order_charge_person).permit(:order_id, :employee_id, :basic_amount, :time_limit_lower, :time_limit_upper, :deduction_bid, :overtime_bid)
    end
end
