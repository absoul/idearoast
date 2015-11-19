class IdeasController < ApplicationController

before_action :require_id, except:[:index, :new]
	def show
	end

	def new
		@idea = Idea.new
	end

	def create
		@idea = Idea.new(idea_params)
		if @idea.save
			redirect_to @idea, notice:"Congrats, new idea created!"
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @idea.update(idea_params)
			redirect_to @idea, notice: "Idea successfully updated"
		else
			render :edit
		end
	end

	def destroy
		@idea.destroy
		redirect_to root, notice: "Idea successfully deleted"
	end

private
	def idea_params
		params.require(:idea).permit(:title, :description)
	end

	def require_id
		@idea = Idea.find(params[:id])
	end

end
