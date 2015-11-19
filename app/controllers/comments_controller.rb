class CommentsController < ApplicationController

before_action :require_id, except:[:index, :new] 
	
	def show
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to @comment notice: "Thanks for roasting this idea!"
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @comment.update(comment_params)
			redirect_to @comment, notice: "Your comment successfully updated"
		else
			render :edit
		end
	end

	def destroy
		@comment.destroy
		redirect_to root, notice: "Comment successfully deleted"
	end

private
	def comment_params
		params.require(:comment).permit(:text)
	end

	def require_id
		@comment = Comment.find(params[:id])
	end

end
