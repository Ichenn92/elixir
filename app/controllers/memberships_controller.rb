class MembershipsController < ApplicationController
  def create
    group = Group.find(params[:group_id])
    membership = Membership.new(user_id: current_user.id, group_id: group.id)
    if membership.save
      redirect_to group_path(group)
    else
      flash.alert = "Veuillez contacter l'organisateur de l'activité"
    end
  end

  def destroy
    @group = Group.find(params[:id])
    membership = @group.memberships.find_by(user: current_user)
    membership.destroy
    redirect_to group_path(group)
    end
  end

end
