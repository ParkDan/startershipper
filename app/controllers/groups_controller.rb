class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find_by_id(params[:id])
  end

  def new
    @group = Group.new
  end

  def membership

    unless Membership.find_by_user_id(current_user.id) && Membership.find_by_group_id(params[:id])
      m=Membership.new
      m.group_id=params[:id]
      m.user_id=current_user.id
      m.save
      redirect_to group_url(params[:id]) , notice: "You have joined the group!"
    else redirect_to group_url(params[:id]) , notice: 'You are already a member!'

    end

  end

  def create
    @group = Group.new
    @group.name = params[:name]
    @group.caption = params[:caption]

    if @group.save
            redirect_to network_url(1)
          else
      render 'new'
    end
  end

  def edit
    @group = Group.find_by_id(params[:id])
  end

  def update
    @group = Group.find_by_id(params[:id])
    @group.name = params[:name]
    @group.caption = params[:caption]
    if @group.save
            redirect_to network_url(1)
          else
      render 'edit'
    end
  end

  def destroy
    @group = Group.find_by_id(params[:id])
    @group.destroy
          redirect_to network_url(1)
      end
end
