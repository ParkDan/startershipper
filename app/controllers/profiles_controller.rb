class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find_by_user_id(current_user.id)
  end

  def new
     unless Profile.find_by_user_id(current_user.id)
      @profile = Profile.new
      @profile.user_id=current_user.id
      @profile.network_id=1
      @profile.save
    else
      @profile = Profile.find_by_id(current_user.id)
    end
    redirect_to edit_profile_url(@profile.id)
  end

  def edit
      @profile = Profile.find_by_id(current_user.id)
  end

  def update
    @profile = Profile.find_by_id(current_user.id)
    @profile.name = params[:name]
    @profile.meet_pref = params[:meet_pref]
    @profile.avail_times = params[:avail_times]
    @profile.bio = params[:bio]
    @profile.network_id=params[:network_id]

    if @profile.save
            redirect_to profiles_url
          else
      render 'edit'
    end
  end

  def destroy
    @profile = Profile.find_by_id(params[:id])
    @profile.destroy
        redirect_to profiles_url
      end
end
