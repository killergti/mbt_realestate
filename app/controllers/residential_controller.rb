class ResidentialController < ApplicationController
  
  before_filter :find_residential, :only => [:show]
  
  def index
    @residential = Residential.all
  end  
  
  def show
  end

private 
  def find_residential
    begin
      @residential = Residential.includes(:pictures).find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "Requested residential could not be found."
      redirect_to root_path
    end
  end
  
end
