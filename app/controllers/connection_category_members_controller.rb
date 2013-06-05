class ConnectionCategoryMembersController < ApplicationController
  # GET /connection_category_members
  # GET /connection_category_members.json
  def index
    @connection_category_members = ConnectionCategoryMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @connection_category_members }
    end
  end

  # GET /connection_category_members/1
  # GET /connection_category_members/1.json
  def show
    @connection_category_member = ConnectionCategoryMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @connection_category_member }
    end
  end

  # GET /connection_category_members/new
  # GET /connection_category_members/new.json
  def new
    @connection_category_member = ConnectionCategoryMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @connection_category_member }
    end
  end

  # GET /connection_category_members/1/edit
  def edit
    @connection_category_member = ConnectionCategoryMember.find(params[:id])
  end

  # POST /connection_category_members
  # POST /connection_category_members.json
  def create
    @connection_category_member = ConnectionCategoryMember.new(params[:connection_category_member])

    respond_to do |format|
      if @connection_category_member.save
        format.html { redirect_to @connection_category_member, notice: 'Connection category member was successfully created.' }
        format.json { render json: @connection_category_member, status: :created, location: @connection_category_member }
      else
        format.html { render action: "new" }
        format.json { render json: @connection_category_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /connection_category_members/1
  # PUT /connection_category_members/1.json
  def update
    @connection_category_member = ConnectionCategoryMember.find(params[:id])

    respond_to do |format|
      if @connection_category_member.update_attributes(params[:connection_category_member])
        format.html { redirect_to @connection_category_member, notice: 'Connection category member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @connection_category_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connection_category_members/1
  # DELETE /connection_category_members/1.json
  def destroy
    @connection_category_member = ConnectionCategoryMember.find(params[:id])
    @connection_category_member.destroy

    respond_to do |format|
      format.html { redirect_to connection_category_members_url }
      format.json { head :no_content }
    end
  end
end
