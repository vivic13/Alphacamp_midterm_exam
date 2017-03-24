class InfosController < ApplicationController
	
	before_action :find_info, only:[:show, :edit, :update, :destroy]



	def index
		@infos = Info.all
	end
	def new
		@info = Info.new
	end
	def create
		@info = Info.new(info_params)
	 	if @info.save
	 		redirect_to infos_path
		else 
			render :new
		end
	end
	def show

	end
	def edit

	end
	def update
		if @info.update(info_params)
			redirect_to info_url(@info)
		else 
			render :edit
		end

	end
	def destroy
		@info.destroy
		redirect_to infos_path
	end

	private

	def info_params
		params.require(:info).permit(:title, :content,:category_id)
	end

	def find_info
		@info = Info.find(params[:id])
	end

end
