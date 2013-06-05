class ConnectionGroupsController < ApplicationController
  # GET /connection_groups
  # GET /connection_groups.json
  def index
    @connection_groups = ConnectionGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @connection_groups }
    end
  end

  # GET /connection_groups/1
  # GET /connection_groups/1.json
  def show
    @connection_group = ConnectionGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @connection_group }
    end
  end

  # GET /connection_groups/new
  # GET /connection_groups/new.json
  def new
    @connection_group = ConnectionGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @connection_group }
    end
  end

  # GET /connection_groups/1/edit
  def edit
    @connection_group = ConnectionGroup.find(params[:id])
  end

  # POST /connection_groups
  # POST /connection_groups.json
  def create
    @connection_group = ConnectionGroup.new(params[:connection_group])

    respond_to do |format|
      if @connection_group.save
        format.html { redirect_to @connection_group, notice: 'Connection group was successfully created.' }
        format.json { render json: @connection_group, status: :created, location: @connection_group }
      else
        format.html { render action: "new" }
        format.json { render json: @connection_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /connection_groups/1
  # PUT /connection_groups/1.json
  def update
    @connection_group = ConnectionGroup.find(params[:id])

    respond_to do |format|
      if @connection_group.update_attributes(params[:connection_group])
        format.html { redirect_to @connection_group, notice: 'Connection group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @connection_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connection_groups/1
  # DELETE /connection_groups/1.json
  def destroy
    @connection_group = ConnectionGroup.find(params[:id])
    @connection_group.destroy

    respond_to do |format|
      format.html { redirect_to connection_groups_url }
      format.json { head :no_content }
    end
  end
end
