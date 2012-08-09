class CommentsController < ApplicationController
  
  def create
    @video = Video.find params[:video_id]
    @comment = @video.comments.create params[:comment]
    
  #redirect_to @video
 respond_to do |format|
    format.html { redirect_to @video }
    format.js # create.js.erb
    
  end
  
end
