class PhrasesController < ApplicationController
  
  inherit_resources
  
  respond_to :html
  respond_to :json, :only => [:show, :index]
  
  has_scope :post_on_between, using: %i[started_at finished_at], type: :hash
  
  protected
    def collection
      @phrases ||= end_of_association_chain.order(post_on: :desc).limit(100)
    end
    
  private

    def phrase_params
      params.require(:phrase).permit(:body, :body_image, :post_on)
    end

end
