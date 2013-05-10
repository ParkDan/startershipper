class PostsController < ApplicationController
  def home
  end


  def index
    @posts = Post.all
    @users=User.all
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.caption = params[:caption]
    @post.timestamp = Time.now
    @post.user_id = params[:user_id]
    @post.group_id = params[:group_id]

    if @post.save
            redirect_to posts_url
          else
      render 'new'
    end
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def update
    @post = Post.find_by_id(params[:id])
    @post.title = params[:title]
    @post.caption = params[:caption]
    @post.user_id = params[:user_id]
    @post.group_id = params[:group_id]

    if @post.save
            redirect_to posts_url
          else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find_by_id(params[:id])
    @post.destroy
        redirect_to posts_url
      end
end
