class StockPartsController < ApplicationController
  before_action :set_stock_part, only: [:show, :edit, :update, :destroy]

  # GET /stock_parts
  # GET /stock_parts.json
  def index
    @stock_parts = StockPart.all
  end

  # GET /stock_parts/1
  # GET /stock_parts/1.json
  def show
  end

  # GET /stock_parts/new
  def new
    @stock_part = StockPart.new
  end

  # GET /stock_parts/1/edit
  def edit
  end

  # POST /stock_parts
  # POST /stock_parts.json
  def create
    @stock_part = StockPart.new(stock_part_params)

    respond_to do |format|
      if @stock_part.save
        format.html { redirect_to @stock_part, notice: 'Stock part was successfully created.' }
        format.json { render :show, status: :created, location: @stock_part }
      else
        format.html { render :new }
        format.json { render json: @stock_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_parts/1
  # PATCH/PUT /stock_parts/1.json
  def update
    respond_to do |format|
      if @stock_part.update(stock_part_params)
        format.html { redirect_to @stock_part, notice: 'Stock part was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_part }
      else
        format.html { render :edit }
        format.json { render json: @stock_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_parts/1
  # DELETE /stock_parts/1.json
  def destroy
    @stock_part.destroy
    respond_to do |format|
      format.html { redirect_to stock_parts_url, notice: 'Stock part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_part
      @stock_part = StockPart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_part_params
      params.require(:stock_part).permit(:part_number, :name, :description, :category_code, :supplier_cost, :minimum_qty, :maximum_qty, :restock_to_level, :stock_links, :contract_price, :user_history, :notes, :customer_portal_id)
    end
end
