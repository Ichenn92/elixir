class MembershipsController < ApplicationController
  def create
    group = Group.find(params[:group_id])
    membership = Membership.new(user_id: current_user.id, group_id: group.id)
    if membership.save
      redirect_to group_path(group)
    else
      flash[:alert] = "Veuillez contacter l'organisateur de l'activité"
    end
  end

  def destroy
    @membership = Membership.find(params[:id])
    @membership.destroy
  end

end
