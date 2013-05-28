class ElectronicApprovalsController < ApplicationController
  # GET /electronic_approvals
  # GET /electronic_approvals.json
  def index
    @electronic_approvals = ElectronicApproval.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @electronic_approvals }
    end
  end

  # GET /electronic_approvals/1
  # GET /electronic_approvals/1.json
  def show
    @electronic_approval = ElectronicApproval.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @electronic_approval }
    end
  end

  # GET /electronic_approvals/new
  # GET /electronic_approvals/new.json
  def new
    @electronic_approval = ElectronicApproval.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @electronic_approval }
    end
  end

  # GET /electronic_approvals/1/edit
  def edit
    @electronic_approval = ElectronicApproval.find(params[:id])
  end

  # POST /electronic_approvals
  # POST /electronic_approvals.json
  def create
    @electronic_approval = ElectronicApproval.new(params[:electronic_approval])

    respond_to do |format|
      if @electronic_approval.save
        format.html { redirect_to @electronic_approval, notice: 'Electronic approval was successfully created.' }
        format.json { render json: @electronic_approval, status: :created, location: @electronic_approval }
      else
        format.html { render action: "new" }
        format.json { render json: @electronic_approval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /electronic_approvals/1
  # PUT /electronic_approvals/1.json
  def update
    @electronic_approval = ElectronicApproval.find(params[:id])

    respond_to do |format|
      if @electronic_approval.update_attributes(params[:electronic_approval])
        format.html { redirect_to @electronic_approval, notice: 'Electronic approval was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @electronic_approval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electronic_approvals/1
  # DELETE /electronic_approvals/1.json
  def destroy
    @electronic_approval = ElectronicApproval.find(params[:id])
    @electronic_approval.destroy

    respond_to do |format|
      format.html { redirect_to electronic_approvals_url }
      format.json { head :no_content }
    end
  end
end
