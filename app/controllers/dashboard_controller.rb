class DashboardController < ApplicationController
  def index
    client = CGMiner::API::Client.new('192.168.0.2', 4028)
    
    @summary = client.summary
    @pools = client.pools
    @devs = client.devs
  end  
end
