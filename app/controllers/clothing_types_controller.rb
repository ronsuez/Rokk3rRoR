class ClothingTypesController < ApplicationController
  before_action :set_clothing_type, only: [:show, :edit, :update, :destroy]

  # GET /clothing_types
  # GET /clothing_types.json
  def index
    @clothing_types = ClothingType.all
  end

  # GET /clothing_types/1
  # GET /clothing_types/1.json
  def show
  end

  # GET /clothing_types/new
  def new
    @clothing_type = ClothingType.new
  end

  # GET /clothing_types/1/edit
  def edit
  end

  # POST /clothing_types
  # POST /clothing_types.json
  def create
    @clothing_type = ClothingType.new(clothing_type_params)

    respond_to do |format|
      if @clothing_type.save
        format.html { redirect_to @clothing_type, notice: 'Clothing type was successfully created.' }
        format.json { render :show, status: :created, location: @clothing_type }
      else
        format.html { render :new }
        format.json { render json: @clothing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clothing_types/1
  # PATCH/PUT /clothing_types/1.json
  def update
    respond_to do |format|
      if @clothing_type.update(clothing_type_params)
        format.html { redirect_to @clothing_type, notice: 'Clothing type was successfully updated.' }
        format.json { render :show, status: :ok, location: @clothing_type }
      else
        format.html { render :edit }
        format.json { render json: @clothing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clothing_types/1
  # DELETE /clothing_types/1.json
  def destroy
    @clothing_type.destroy
    respond_to do |format|
      format.html { redirect_to clothing_types_url, notice: 'Clothing type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clothing_type
      @clothing_type = ClothingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clothing_type_params
      params.require(:clothing_type).permit(:name)
    end
end
