class ChitsController < ApplicationController
  before_action :set_chit, only: [:show, :edit, :update, :destroy]

  # GET /chits
  # GET /chits.json
  def index
    @chits = Chit.all
  end

  # GET /chits/1
  # GET /chits/1.json
  def show
  end

  # GET /chits/new
  def new
    @chit = Chit.new
  end

  # GET /chits/1/edit
  def edit
  end

  # POST /chits
  # POST /chits.json
  def create
    @chit = Chit.new(chit_params)

    respond_to do |format|
      if @chit.save
        format.html { redirect_to @chit, notice: 'Chit was successfully created.' }
        format.json { render :show, status: :created, location: @chit }
      else
        format.html { render :new }
        format.json { render json: @chit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chits/1
  # PATCH/PUT /chits/1.json
  def update
    respond_to do |format|
      if @chit.update(chit_params)
        format.html { redirect_to @chit, notice: 'Chit was successfully updated.' }
        format.json { render :show, status: :ok, location: @chit }
      else
        format.html { render :edit }
        format.json { render json: @chit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chits/1
  # DELETE /chits/1.json
  def destroy
    @chit.destroy
    respond_to do |format|
      format.html { redirect_to chits_url, notice: 'Chit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chit
      @chit = Chit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chit_params
      params.require(:chit).permit(:quantity, :type_code, :product_cost, :description, :notes, :history, :stock_part_id)
    end
end
