class ConnectionCategoryClassesController < ApplicationController
  # GET /connection_category_classes
  # GET /connection_category_classes.json
  def index
    @connection_category_classes = ConnectionCategoryClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @connection_category_classes }
    end
  end

  # GET /connection_category_classes/1
  # GET /connection_category_classes/1.json
  def show
    @connection_category_class = ConnectionCategoryClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @connection_category_class }
    end
  end

  # GET /connection_category_classes/new
  # GET /connection_category_classes/new.json
  def new
    @connection_category_class = ConnectionCategoryClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @connection_category_class }
    end
  end

  # GET /connection_category_classes/1/edit
  def edit
    @connection_category_class = ConnectionCategoryClass.find(params[:id])
  end

  # POST /connection_category_classes
  # POST /connection_category_classes.json
  def create
    @connection_category_class = ConnectionCategoryClass.new(params[:connection_category_class])

    respond_to do |format|
      if @connection_category_class.save
        format.html { redirect_to @connection_category_class, notice: 'Connection category class was successfully created.' }
        format.json { render json: @connection_category_class, status: :created, location: @connection_category_class }
      else
        format.html { render action: "new" }
        format.json { render json: @connection_category_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /connection_category_classes/1
  # PUT /connection_category_classes/1.json
  def update
    @connection_category_class = ConnectionCategoryClass.find(params[:id])

    respond_to do |format|
      if @connection_category_class.update_attributes(params[:connection_category_class])
        format.html { redirect_to @connection_category_class, notice: 'Connection category class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @connection_category_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connection_category_classes/1
  # DELETE /connection_category_classes/1.json
  def destroy
    @connection_category_class = ConnectionCategoryClass.find(params[:id])
    @connection_category_class.destroy

    respond_to do |format|
      format.html { redirect_to connection_category_classes_url }
      format.json { head :no_content }
    end
  end
end
