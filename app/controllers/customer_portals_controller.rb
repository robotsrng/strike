class CustomerPortalsController < ApplicationController
  before_action :set_customer_portal, only: [:show, :edit, :update, :destroy]

  # GET /customer_portals
  # GET /customer_portals.json
  def index
    @customer_portals = CustomerPortal.all
  end

  # GET /customer_portals/1
  # GET /customer_portals/1.json
  def show
  end

  # GET /customer_portals/new
  def new
    @customer_portal = CustomerPortal.new
  end

  # GET /customer_portals/1/edit
  def edit
  end

  # POST /customer_portals
  # POST /customer_portals.json
  def create
    @customer_portal = CustomerPortal.new(customer_portal_params)

    respond_to do |format|
      if @customer_portal.save
        format.html { redirect_to @customer_portal, notice: 'Customer portal was successfully created.' }
        format.json { render :show, status: :created, location: @customer_portal }
      else
        format.html { render :new }
        format.json { render json: @customer_portal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_portals/1
  # PATCH/PUT /customer_portals/1.json
  def update
    respond_to do |format|
      if @customer_portal.update(customer_portal_params)
        format.html { redirect_to @customer_portal, notice: 'Customer portal was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_portal }
      else
        format.html { render :edit }
        format.json { render json: @customer_portal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_portals/1
  # DELETE /customer_portals/1.json
  def destroy
    @customer_portal.destroy
    respond_to do |format|
      format.html { redirect_to customer_portals_url, notice: 'Customer portal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_portal
      @customer_portal = CustomerPortal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_portal_params
      params.require(:customer_portal).permit(:company_name, :company_phone, :company_email, :company_fax, :company_website, :user, :suppliers, :stock_parts, :stock_chits)
    end
end
