class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
    @group.group_users_through.new
  end

  def create
    redirect_to group_messages_path(Group.create(group_params))
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
  end

  private

  def group_params
    params.require(:group).permit(:name, { user_ids: [] })
  end
end
