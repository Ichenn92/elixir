class MembershipsController < ApplicationController
  def create
    @user = current_user
    @membership = Membership.new
    @group = Group.find(params[:membership][:group])
    @membership.user = current_user
    @membership.save
    redirect_to @group
  end

  def destroy
    @membership = Membership.find(params[:id])
    @membership.destroy
  end

end
