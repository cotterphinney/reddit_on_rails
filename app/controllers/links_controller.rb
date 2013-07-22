class LinksController < ApplicationController
  def show
  	@link = Link.find(params[:id])
      @comment = Comment.new
  end

  def new
  	@link = Link.new
  end

  def create
  	@link = Link.new(link_params)
      if @link.save
        redirect_to root_path
      else
        redirect_to new_link_path
        flash.alert = "Invalid URL"
      end

  end

  private
  	def link_params
  		params.require(:link).permit(:title, :url)
  	end
end
