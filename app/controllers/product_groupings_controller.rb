class ProductGroupingsController < ApplicationController
  # GET /product_groupings
  # GET /product_groupings.json
  def index
    @product_groupings = ProductGrouping.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_groupings }
    end
  end

  # GET /product_groupings/1
  # GET /product_groupings/1.json
  def show
    @product_grouping = ProductGrouping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_grouping }
    end
  end

  # GET /product_groupings/new
  # GET /product_groupings/new.json
  def new
    @product_grouping = ProductGrouping.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_grouping }
    end
  end

  # GET /product_groupings/1/edit
  def edit
    @product_grouping = ProductGrouping.find(params[:id])
  end

  # POST /product_groupings
  # POST /product_groupings.json
  def create
    @product_grouping = ProductGrouping.new(params[:product_grouping])

    respond_to do |format|
      if @product_grouping.save
        format.html { redirect_to @product_grouping, notice: 'Product grouping was successfully created.' }
        format.json { render json: @product_grouping, status: :created, location: @product_grouping }
      else
        format.html { render action: "new" }
        format.json { render json: @product_grouping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_groupings/1
  # PUT /product_groupings/1.json
  def update
    @product_grouping = ProductGrouping.find(params[:id])

    respond_to do |format|
      if @product_grouping.update_attributes(params[:product_grouping])
        format.html { redirect_to @product_grouping, notice: 'Product grouping was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_grouping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_groupings/1
  # DELETE /product_groupings/1.json
  def destroy
    @product_grouping = ProductGrouping.find(params[:id])
    @product_grouping.destroy

    respond_to do |format|
      format.html { redirect_to product_groupings_url }
      format.json { head :no_content }
    end
  end
end
