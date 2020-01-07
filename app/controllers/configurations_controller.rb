class ConfigurationsController < ApplicationController
  
  inherit_resources
  
  def update
    update! {posts_path}
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def configuration_params
      params.require(:configuration).permit(:value)
    end
    
end
