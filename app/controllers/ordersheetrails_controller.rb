class OrdersheetrailsController < ApplicationController
  before_action :set_ordersheetrail, only: [:show, :edit, :update, :destroy]

  # GET /ordersheetrails
  # GET /ordersheetrails.json
  def index
    @ordersheetrails = Ordersheetrail.all
  end

  # GET /ordersheetrails/1
  # GET /ordersheetrails/1.json
  def show
  end

  # GET /ordersheetrails/new
  def new
    @ordersheetrail = Ordersheetrail.new
  end

  # GET /ordersheetrails/1/edit
  def edit
  end

  # POST /ordersheetrails
  # POST /ordersheetrails.json
  def create
    @ordersheetrail = Ordersheetrail.new(ordersheetrail_params)

    respond_to do |format|
      if @ordersheetrail.save
        format.html { redirect_to @ordersheetrail, notice: 'Ordersheetrail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ordersheetrail }
      else
        format.html { render action: 'new' }
        format.json { render json: @ordersheetrail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordersheetrails/1
  # PATCH/PUT /ordersheetrails/1.json
  def update
    respond_to do |format|
      if @ordersheetrail.update(ordersheetrail_params)
        format.html { redirect_to @ordersheetrail, notice: 'Ordersheetrail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ordersheetrail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordersheetrails/1
  # DELETE /ordersheetrails/1.json
  def destroy
    @ordersheetrail.destroy
    respond_to do |format|
      format.html { redirect_to ordersheetrails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordersheetrail
      @ordersheetrail = Ordersheetrail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordersheetrail_params
      params.require(:ordersheetrail).permit(:g, :scaffold, :ordersheet, :company_cd, :reg_date, :mod_date, :company_name, :string, :division_name, :charge_person, :contact, :tel_no)
    end
end
