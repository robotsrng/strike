class SupplierPartsController < ApplicationController
  before_action :set_supplier_part, only: [:show, :edit, :update, :destroy]

  # GET /supplier_parts
  # GET /supplier_parts.json
  def index
    @supplier_parts = SupplierPart.all
  end

  # GET /supplier_parts/1
  # GET /supplier_parts/1.json
  def show
  end

  # GET /supplier_parts/new
  def new
    @supplier_part = SupplierPart.new
  end

  # GET /supplier_parts/1/edit
  def edit
  end

  # POST /supplier_parts
  # POST /supplier_parts.json
  def create
    @supplier_part = SupplierPart.new(supplier_part_params)

    respond_to do |format|
      if @supplier_part.save
        format.html { redirect_to @supplier_part, notice: 'Supplier part was successfully created.' }
        format.json { render :show, status: :created, location: @supplier_part }
      else
        format.html { render :new }
        format.json { render json: @supplier_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplier_parts/1
  # PATCH/PUT /supplier_parts/1.json
  def update
    respond_to do |format|
      if @supplier_part.update(supplier_part_params)
        format.html { redirect_to @supplier_part, notice: 'Supplier part was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplier_part }
      else
        format.html { render :edit }
        format.json { render json: @supplier_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplier_parts/1
  # DELETE /supplier_parts/1.json
  def destroy
    @supplier_part.destroy
    respond_to do |format|
      format.html { redirect_to supplier_parts_url, notice: 'Supplier part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier_part
      @supplier_part = SupplierPart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplier_part_params
      params.require(:supplier_part).permit(:part_number, :name, :description, :category_code, :supplier_cost, :history, :supplier_id)
    end
end
