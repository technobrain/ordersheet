class PaymentSiteMastersController < ApplicationController
  before_action :set_payment_site_master, only: [:show, :edit, :update, :destroy]

  # GET /payment_site_masters
  # GET /payment_site_masters.json
  def index
    @payment_site_masters = PaymentSiteMaster.all
  end

  # GET /payment_site_masters/1
  # GET /payment_site_masters/1.json
  def show
  end

  # GET /payment_site_masters/new
  def new
    @payment_site_master = PaymentSiteMaster.new
  end

  # GET /payment_site_masters/1/edit
  def edit

  end

  # POST /payment_site_masters
  # POST /payment_site_masters.json
  def create
    @payment_site_master = PaymentSiteMaster.new(payment_site_master_params)

    respond_to do |format|
      if @payment_site_master.save
        format.html { redirect_to @payment_site_master, notice: 'Payment site master was successfully created.' }
        format.json { render 'show', status: :created, location: @payment_site_master }
      else
        format.html { render 'new' }
        format.json { render json: @payment_site_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_site_masters/1
  # PATCH/PUT /payment_site_masters/1.json
  def update
    respond_to do |format|
      if @payment_site_master.update(payment_site_master_params)
        format.html { redirect_to @payment_site_master, notice: 'Payment site master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render 'edit' }
        format.json { render json: @payment_site_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_site_masters/1
  # DELETE /payment_site_masters/1.json
  def destroy
    @payment_site_master.destroy
    respond_to do |format|
      format.html { redirect_to payment_site_masters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_site_master
      @payment_site_master = PaymentSiteMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_site_master_params
      params.require(:payment_site_master).permit(:payment_site_name)
    end
end
