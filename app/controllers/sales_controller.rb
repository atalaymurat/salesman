class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]
    
  layout "sale"

  # GET /sales
  # GET /sales.json
  def index
    @sales = Sale.all
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
    @sale = Sale.all.includes(:sale_items).find(params[:id])
    if @sale.person.present?
      @full_name =
        @sale.person.name + " " + @sale.person.middle + " " + @sale.person.family     
    end

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "VMM_TPF_#{@sale.updated_at}",
        page_size: "A4",
        template: "sales/show.html.erb",
        orientation: "Portrait",
        lowquality: true,
        zoom: 1,
        layout: "pdf.html.erb",
        show_as_html: false,
        encoding: "utf8",
        dpi: 75
      end
    end
  end

  # GET /sales/new
  def new
    @sale = Sale.new
    @sale.sale_items.build
  end

  # GET /sales/1/edit
  def edit
    @sale.sale_items.build
  end

  # POST /sales
  # POST /sales.json
  def create
    @sale = Sale.new(sale_params)

    respond_to do |format|
      if @sale.save
        format.html { redirect_to @sale, notice: 'Sale was successfully created.' }
        format.json { render :show, status: :created, location: @sale }
      else
        format.html { render :new }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale }
        format.pdf do
          render pdf: "VMM_TPF_#{@sale.updated_at}",
          page_size: "A4",
          template: "sales/show.html.erb",
          orientation: "Portrait",
          lowquality: true,
          zoom: 1,
          layout: "pdf.html.erb",
          show_as_html: false,
          encoding: "utf8",
          dpi: 75
        end
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_params
      params.require(:sale).permit(:company,
                                   :address, 
                                   :status, 
                                   :discount,
                                   :payment,
                                   :delivery_condition,
                                   :delivery_time,
                                   :person_id,
                                   :offer_type,
                                   :currency,
                                   :offer_no,
                                   :vat, 
                                  sale_items_attributes: [:id, 
                                                          :code,
                                                          :description, 
                                                          :price, 
                                                          :qty,
                                                          :currency,
                                                          :brand,
                                                          :_destroy ])
    end
end
