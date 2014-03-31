class AutoPartsController < ApplicationController
  before_action :set_auto_part, only: [:show, :edit, :update, :destroy]

 def by_price

  @auto_parts = AutoPart.order(:price)

 end

 

 def by_make

  @auto_parts = AutoPart.where(vehicle_make: "ford")

 end

  # GET /auto_parts
  # GET /auto_parts.json
  def index
    @auto_parts = AutoPart.all
  end

  # GET /auto_parts/1
  # GET /auto_parts/1.json
  def show
  end

  # GET /auto_parts/new
  def new
    @auto_part = AutoPart.new
  end

  # GET /auto_parts/1/edit
  def edit
  end

  # POST /auto_parts
  # POST /auto_parts.json
  def create
    @auto_part = AutoPart.new(auto_part_params)

    respond_to do |format|
      if @auto_part.save
        format.html { redirect_to @auto_part, notice: 'Auto part was successfully created.' }
        format.json { render action: 'show', status: :created, location: @auto_part }
      else
        format.html { render action: 'new' }
        format.json { render json: @auto_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auto_parts/1
  # PATCH/PUT /auto_parts/1.json
  def update
    respond_to do |format|
      if @auto_part.update(auto_part_params)
        format.html { redirect_to @auto_part, notice: 'Auto part was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @auto_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_parts/1
  # DELETE /auto_parts/1.json
  def destroy
    @auto_part.destroy
    respond_to do |format|
      format.html { redirect_to auto_parts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_part
      @auto_part = AutoPart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auto_part_params
      params.require(:auto_part).permit(:name, :description, :price, :vehicle_make, :vehicle_model)
    end
end
