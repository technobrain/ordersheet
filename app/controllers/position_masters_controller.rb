class PositionMastersController < ApplicationController
  before_action :set_position_master, only: [:show, :edit, :update, :destroy]

  # GET /position_masters
  # GET /position_masters.json
  def index
    @position_masters = PositionMaster.all
  end

  # GET /position_masters/1
  # GET /position_masters/1.json
  def show
  end

  # GET /position_masters/new
  def new
    @position_master = PositionMaster.new
  end

  # GET /position_masters/1/edit
  def edit
  end

  # POST /position_masters
  # POST /position_masters.json
  def create
    @position_master = PositionMaster.new(position_master_params)

    respond_to do |format|
      if @position_master.save
        format.html { redirect_to @position_master, notice: 'Position master was successfully created.' }
        format.json { render 'show', status: :created, location: @position_master }
      else
        format.html { render 'new' }
        format.json { render json: @position_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /position_masters/1
  # PATCH/PUT /position_masters/1.json
  def update
    respond_to do |format|
      if @position_master.update(position_master_params)
        format.html { redirect_to @position_master, notice: 'Position master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render 'edit' }
        format.json { render json: @position_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_masters/1
  # DELETE /position_masters/1.json
  def destroy
    @position_master.destroy
    respond_to do |format|
      format.html { redirect_to position_masters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position_master
      @position_master = PositionMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_master_params
      params.require(:position_master).permit(:position_name, :position_expenses)
    end
end
