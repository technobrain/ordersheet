class OrderBreakTimesController < ApplicationController
  before_action :set_order_break_time, only: [:show, :edit, :update, :destroy]

  # GET /order_break_times
  # GET /order_break_times.json
  def index
    @order_break_times = OrderBreakTime.all
  end

  # GET /order_break_times/1
  # GET /order_break_times/1.json
  def show
  end

  # GET /order_break_times/new
  def new
    @order_break_time = OrderBreakTime.new
  end

  # GET /order_break_times/1/edit
  def edit
  end

  # POST /order_break_times
  # POST /order_break_times.json
  def create
    @order_break_time = OrderBreakTime.new(order_break_time_params)

    respond_to do |format|
      if @order_break_time.save
        format.html { redirect_to @order_break_time, notice: 'Order break time was successfully created.' }
        format.json { render 'show', status: :created, location: @order_break_time }
      else
        format.html { render 'new' }
        format.json { render json: @order_break_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_break_times/1
  # PATCH/PUT /order_break_times/1.json
  def update
    respond_to do |format|
      if @order_break_time.update(order_break_time_params)
        format.html { redirect_to @order_break_time, notice: 'Order break time was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render 'edit' }
        format.json { render json: @order_break_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_break_times/1
  # DELETE /order_break_times/1.json
  def destroy
    @order_break_time.destroy
    respond_to do |format|
      format.html { redirect_to order_break_times_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_break_time
      @order_break_time = OrderBreakTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_break_time_params
      params.require(:order_break_time).permit(:order_id, :break_start_time, :break_end_time)
    end
end
