class MemberService::MembersController < ApplicationController
  before_action :set_member_service_member, only: [:show, :edit, :update, :destroy]

  # GET /member_service/members
  # GET /member_service/members.json
  def index
    @member_service_members = MemberService::Member.all
  end

  # GET /member_service/members/1
  # GET /member_service/members/1.json
  def show
  end

  # GET /member_service/members/new
  def new
    @member_service_member = MemberService::Member.new
  end

  # GET /member_service/members/1/edit
  def edit
  end

  # POST /member_service/members
  # POST /member_service/members.json
  def create
    @member_service_member = MemberService::Member.new(member_service_member_params)

    respond_to do |format|
      if @member_service_member.save
        format.html { redirect_to @member_service_member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member_service_member }
      else
        format.html { render :new }
        format.json { render json: @member_service_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_service/members/1
  # PATCH/PUT /member_service/members/1.json
  def update
    respond_to do |format|
      if @member_service_member.update(member_service_member_params)
        format.html { redirect_to @member_service_member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_service_member }
      else
        format.html { render :edit }
        format.json { render json: @member_service_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_service/members/1
  # DELETE /member_service/members/1.json
  def destroy
    @member_service_member.destroy
    respond_to do |format|
      format.html { redirect_to member_service_members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_service_member
      @member_service_member = MemberService::Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_service_member_params
      params.require(:member_service_member).permit(:name, :email)
    end
end
