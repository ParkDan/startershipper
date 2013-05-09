class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find_by_id(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new
    @idea.name = params[:name]
    @idea.caption = params[:caption]
    @idea.timestamp = Time.now
    @idea.user_id = params[:user_id]
    @idea.group_id = params[:group_id]

    if @idea.save
            redirect_to ideas_url
          else
      render 'new'
    end
  end

  def edit
    @idea = Idea.find_by_id(params[:id])
  end

  def update
    @idea = Idea.find_by_id(params[:id])
    @idea.name = params[:name]
    @idea.caption = params[:caption]
    @idea.user_id = params[:user_id]
    @idea.group_id = params[:group_id]

    if @idea.save
            redirect_to ideas_url
          else
      render 'edit'
    end
  end

  def destroy
    @idea = Idea.find_by_id(params[:id])
    @idea.destroy
        redirect_to ideas_url
      end
end
