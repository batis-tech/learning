class AssignsController < ApplicationController
  before_action :set_assign, only: [:show, :update, :destroy]

  # GET /assigns
  def index
    @assigns = Assign.all

    render json: @assigns
  end

  # GET /assigns/1
  def show
    render json: @assign
  end

  # POST /assigns
  def create
    @assign = Assign.new(assign_params)

    if @assign.save
      render json: @assign, status: :created, location: @assign
    else
      render json: @assign.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assigns/1
  def update
    if @assign.update(assign_params)
      render json: @assign
    else
      render json: @assign.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assigns/1
  def destroy
    @assign.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assign
      @assign = Assign.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assign_params
      params.require(:assign).permit(:course_id, :user_id, :completed)
    end
end
