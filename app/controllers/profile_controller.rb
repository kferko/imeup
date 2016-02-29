class ProfileController < ApplicationController
	def create
	end

	def new
	end

	def index
	end

	def edit
	   # @profile = Profile.find_by user_id: current_user.id
	   @profile = Profile.find(params[:id])
	   @attributes = Profile.attribute_names - %w(id user_id created_at updated_at)
	end

	def update
	    @profile = Profile.find_by_id(params[:id])
	      if @profile.update(profile_update)
	        @profile.avatar = profile_update[:avatar]
	        @profile.save
	      # redirect_to @profile

	      redirect_to profile_path
	    else
	      render 'edit'
	    end
	  end

	  def show
	  	@profile = Profile.find(params[:id])
	    @user =User.find(@profile.user_id)
	  	@first_name = Profile.find(params[:id]).first_name
	  	@last_name = Profile.find(params[:id]).last_name
	  	@avatar = Profile.find(params[:id]).avatar
	  	@city = Profile.find(params[:id]).city
	  	@state = Profile.find(params[:id]).state
	  	@birthday = Profile.find(params[:id]).birthday
	  	@profession = Profile.find(params[:id]).profession
	  	@current_employer = Profile.find(params[:id]).current_employer
	  	@high_school = Profile.find(params[:id]).high_school
	  	@college = Profile.find(params[:id]).college
	  	@status = Profile.find(params[:id]).status
	      if current_user
	      @id = current_user.id
	      end
	  end



private

	def profile_update
    	params.require(:profile).permit(:first_name, :last_name, :avatar, :city, :state, :birthday, :profession, :current_employer, :status )
  	end
end
