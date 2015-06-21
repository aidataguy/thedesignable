class UsersController < ApplicationController
	def create
	 @user = User.new
	 if @user.save
	    @profile = Profile.create(:user_id => @user_id )
	    #@profile.user_id = @user_id
	    redirect_to root_url
	  else
	    render "new"
	  end 

	end


	def index
		
	end
end
