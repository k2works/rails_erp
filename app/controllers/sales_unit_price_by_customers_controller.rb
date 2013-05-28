class SalesUnitPriceByCustomersController < ApplicationController
  # GET /sales_unit_price_by_customers
  # GET /sales_unit_price_by_customers.json
  def index
    @sales_unit_price_by_customers = SalesUnitPriceByCustomer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sales_unit_price_by_customers }
    end
  end

  # GET /sales_unit_price_by_customers/1
  # GET /sales_unit_price_by_customers/1.json
  def show
    @sales_unit_price_by_customer = SalesUnitPriceByCustomer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sales_unit_price_by_customer }
    end
  end

  # GET /sales_unit_price_by_customers/new
  # GET /sales_unit_price_by_customers/new.json
  def new
    @sales_unit_price_by_customer = SalesUnitPriceByCustomer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sales_unit_price_by_customer }
    end
  end

  # GET /sales_unit_price_by_customers/1/edit
  def edit
    @sales_unit_price_by_customer = SalesUnitPriceByCustomer.find(params[:id])
  end

  # POST /sales_unit_price_by_customers
  # POST /sales_unit_price_by_customers.json
  def create
    @sales_unit_price_by_customer = SalesUnitPriceByCustomer.new(params[:sales_unit_price_by_customer])

    respond_to do |format|
      if @sales_unit_price_by_customer.save
        format.html { redirect_to @sales_unit_price_by_customer, notice: 'Sales unit price by customer was successfully created.' }
        format.json { render json: @sales_unit_price_by_customer, status: :created, location: @sales_unit_price_by_customer }
      else
        format.html { render action: "new" }
        format.json { render json: @sales_unit_price_by_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sales_unit_price_by_customers/1
  # PUT /sales_unit_price_by_customers/1.json
  def update
    @sales_unit_price_by_customer = SalesUnitPriceByCustomer.find(params[:id])

    respond_to do |format|
      if @sales_unit_price_by_customer.update_attributes(params[:sales_unit_price_by_customer])
        format.html { redirect_to @sales_unit_price_by_customer, notice: 'Sales unit price by customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sales_unit_price_by_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_unit_price_by_customers/1
  # DELETE /sales_unit_price_by_customers/1.json
  def destroy
    @sales_unit_price_by_customer = SalesUnitPriceByCustomer.find(params[:id])
    @sales_unit_price_by_customer.destroy

    respond_to do |format|
      format.html { redirect_to sales_unit_price_by_customers_url }
      format.json { head :no_content }
    end
  end
end
