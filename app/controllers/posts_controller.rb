class PostsController < ApplicationController
  
  inherit_resources
  
  respond_to :html
  respond_to :json, :only => [:show, :index]
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :excerpt, :excerpt_image, :body_image, :post_on, :type, :written_on)
    end
end
