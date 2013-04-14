class OrderArrivalDatesController < ApplicationController
  before_action :set_order_arrival_date, only: [:show, :edit, :update, :destroy]

  # GET /order_arrival_dates
  # GET /order_arrival_dates.json
  def index
    @order_arrival_dates = OrderArrivalDate.all
  end

  # GET /order_arrival_dates/1
  # GET /order_arrival_dates/1.json
  def show
  end

  # GET /order_arrival_dates/new
  def new
    @order_arrival_date = OrderArrivalDate.new
  end

  # GET /order_arrival_dates/1/edit
  def edit
  end

  # POST /order_arrival_dates
  # POST /order_arrival_dates.json
  def create
    @order_arrival_date = OrderArrivalDate.new(order_arrival_date_params)

    respond_to do |format|
      if @order_arrival_date.save
        format.html { redirect_to @order_arrival_date, notice: 'Order arrival date was successfully created.' }
        format.json { render action: 'show', status: :created, location: @order_arrival_date }
      else
        format.html { render action: 'new' }
        format.json { render json: @order_arrival_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_arrival_dates/1
  # PATCH/PUT /order_arrival_dates/1.json
  def update
    respond_to do |format|
      if @order_arrival_date.update(order_arrival_date_params)
        format.html { redirect_to @order_arrival_date, notice: 'Order arrival date was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order_arrival_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_arrival_dates/1
  # DELETE /order_arrival_dates/1.json
  def destroy
    @order_arrival_date.destroy
    respond_to do |format|
      format.html { redirect_to order_arrival_dates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_arrival_date
      @order_arrival_date = OrderArrivalDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_arrival_date_params
      params.require(:order_arrival_date).permit(:order_no, :detail_no, :arrival_date)
    end
end
