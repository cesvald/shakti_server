class PostsController < ApplicationController
  
  inherit_resources
  
  has_scope :by_kind
  has_scope :post_on_between, using: %i[started_at finished_at], type: :hash
  
  respond_to :html
  respond_to :json, :only => [:show, :index]
  
  protected
    def collection
      @posts ||= end_of_association_chain.page(params[:page])
    end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :excerpt, :excerpt_image, :body_image, :post_on, :kind, :written_on, :link_to, :youtube_video_code)
    end
    
end
