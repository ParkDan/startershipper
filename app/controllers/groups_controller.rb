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

  def create
    @group = Group.new
    @group.name = params[:name]
    @group.caption = params[:caption]
    if @group.save
            redirect_to groups_url
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
            redirect_to groups_url
          else
      render 'edit'
    end
  end

  def destroy
    @group = Group.find_by_id(params[:id])
    @group.destroy
        redirect_to groups_url
      end
end
