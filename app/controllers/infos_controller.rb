class InfosController < ApplicationController
	before_action :authenticate_user!
	before_action :find_info, only:[:show, :edit, :update, :destroy]



	def index
		@infos = Info.all
	end
	def new
		@info = Info.new
	end
	def create
		@info = Info.new(info_params)
		@info.host = current_user.nickname
		@info.user_id = current_user.id
	 	if @info.save
	 		redirect_to infos_path
		else 
			render :new
		end
	end
	def show

	end
	def edit
		if @info.host != current_user.nickname
			flash[:alert]="something went wrong!"
		end

	end
	def update

	if @info.host == current_user.nickname

		if @info.update(info_params)
			redirect_to info_url(@info)
		else 
			render :edit
		end
	else
		flash[:alert] = "something went wrong!"	
	end

	end
	def destroy

		if @info.host == current_user.nickname
			@info.destroy
			redirect_to infos_path
		else
			flash[:alert] = "something went wrong!"	
		end
	end

	private

	def info_params
		params.require(:info).permit(:title, :content,:category_id)
	end

	def find_info
		@info = Info.find(params[:id])
	end

end
