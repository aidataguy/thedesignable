class ProfilesController < ApplicationController
	def new
  if current_user
    @user = current_user
    abort(@user)
  else
    abort("Not signed in")
  end
end


	def create
		@user = User.find(params[:user_id])
		@profile = Profile.create(params[:profile].permit(:name, :about, :country, :twitter))
		if @profile.save
				redirect_to profile_path(@profile)
			else
				render 'new'
			end

	end
	
end
