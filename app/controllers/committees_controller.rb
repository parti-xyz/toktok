class CommitteesController < ApplicationController
  before_filter :verify_admin

  def index
    @committees = Committee.all
    @committee = Committee.new
  end

  def create
    @committee = Committee.new(committee_params)
    @committee.save
    redirect_to committees_url
  end

  def edit
    @committee = Committee.find(params[:id])
  end

  def update
    @committee = Committee.find(params[:id])
    @committee.update(committee_params)
    redirect_to committees_url
  end

  def destroy
    @committee = Committee.find(params[:id])
    @committee.destroy
    redirect_to committees_url
  end

  private

  def committee_params
    params.require(:committee).permit(:name, :description)
  end

  def verify_admin
    redirect_to root_url unless current_user.try(:admin?)
  end
end
