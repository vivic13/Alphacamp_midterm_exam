class CommentsController < ApplicationController
	before_action :find_info

	def create
		@comment=@info.comments.new(comment_params)
		if @comment.save
			redirect_to info_path(@info)
		else
			flash[:alert] = "請至少輸入ㄧ個字!"	
		end

	end

	def destroy
		@comment=@info.comments.find(params[:id])
		
		@comment.destroy
		redirect_to info_path(@info)
		

	end

	private

	def find_info
		@info = Info.find(params[:info_id])
	end

	def comment_params
		params.require(:comment).permit(:body, :commenter)
	end

end
