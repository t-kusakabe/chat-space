class GroupsController < ApplicationController
  def index
  end

  def new
    @group = Group.new
    @group.group_users_through.new
  end

  def create
    Group.create(group_params)

    redirect_to group_messages_path(params[:group][:id])
  end

  private

  def group_params
    params.require(:group).permit(:name, { user_ids: [] })
  end
end
