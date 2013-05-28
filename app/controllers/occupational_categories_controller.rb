class OccupationalCategoriesController < ApplicationController
  # GET /occupational_categories
  # GET /occupational_categories.json
  def index
    @occupational_categories = OccupationalCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @occupational_categories }
    end
  end

  # GET /occupational_categories/1
  # GET /occupational_categories/1.json
  def show
    @occupational_category = OccupationalCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @occupational_category }
    end
  end

  # GET /occupational_categories/new
  # GET /occupational_categories/new.json
  def new
    @occupational_category = OccupationalCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @occupational_category }
    end
  end

  # GET /occupational_categories/1/edit
  def edit
    @occupational_category = OccupationalCategory.find(params[:id])
  end

  # POST /occupational_categories
  # POST /occupational_categories.json
  def create
    @occupational_category = OccupationalCategory.new(params[:occupational_category])

    respond_to do |format|
      if @occupational_category.save
        format.html { redirect_to @occupational_category, notice: 'Occupational category was successfully created.' }
        format.json { render json: @occupational_category, status: :created, location: @occupational_category }
      else
        format.html { render action: "new" }
        format.json { render json: @occupational_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /occupational_categories/1
  # PUT /occupational_categories/1.json
  def update
    @occupational_category = OccupationalCategory.find(params[:id])

    respond_to do |format|
      if @occupational_category.update_attributes(params[:occupational_category])
        format.html { redirect_to @occupational_category, notice: 'Occupational category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @occupational_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occupational_categories/1
  # DELETE /occupational_categories/1.json
  def destroy
    @occupational_category = OccupationalCategory.find(params[:id])
    @occupational_category.destroy

    respond_to do |format|
      format.html { redirect_to occupational_categories_url }
      format.json { head :no_content }
    end
  end
end
