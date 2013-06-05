class ConnectionCategoriesController < ApplicationController
  # GET /connection_categories
  # GET /connection_categories.json
  def index
    @connection_categories = ConnectionCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @connection_categories }
    end
  end

  # GET /connection_categories/1
  # GET /connection_categories/1.json
  def show
    @connection_category = ConnectionCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @connection_category }
    end
  end

  # GET /connection_categories/new
  # GET /connection_categories/new.json
  def new
    @connection_category = ConnectionCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @connection_category }
    end
  end

  # GET /connection_categories/1/edit
  def edit
    @connection_category = ConnectionCategory.find(params[:id])
  end

  # POST /connection_categories
  # POST /connection_categories.json
  def create
    @connection_category = ConnectionCategory.new(params[:connection_category])

    respond_to do |format|
      if @connection_category.save
        format.html { redirect_to @connection_category, notice: 'Connection category was successfully created.' }
        format.json { render json: @connection_category, status: :created, location: @connection_category }
      else
        format.html { render action: "new" }
        format.json { render json: @connection_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /connection_categories/1
  # PUT /connection_categories/1.json
  def update
    @connection_category = ConnectionCategory.find(params[:id])

    respond_to do |format|
      if @connection_category.update_attributes(params[:connection_category])
        format.html { redirect_to @connection_category, notice: 'Connection category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @connection_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connection_categories/1
  # DELETE /connection_categories/1.json
  def destroy
    @connection_category = ConnectionCategory.find(params[:id])
    @connection_category.destroy

    respond_to do |format|
      format.html { redirect_to connection_categories_url }
      format.json { head :no_content }
    end
  end
end
