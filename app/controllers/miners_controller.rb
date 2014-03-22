class MinersController <  InheritedResources::Base
  def create
      create!() { collection_url }
  end

  def update
      update!() { collection_url }
  end

  def permitted_params
    params.permit(:miner => [:host, :port, :name, :active]) 
  end
end
