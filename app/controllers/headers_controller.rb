class HeadersController < ApplicationController
  
  inherit_resources
  
  respond_to :html
  respond_to :json, :only => [:show, :index]
  
  has_scope :post_on_between, using: %i[started_at finished_at], type: :hash
  has_scope :expire_on_between, using: %i[started_at finished_at], type: :hash
  
  protected
    def collection
      @headers ||= end_of_association_chain.all
    end
    
  private

    def header_params
      params.require(:header).permit(:image, :post_on, :expire_on)
    end

end
