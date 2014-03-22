class Miner < ActiveRecord::Base
  has_many :crude_logs
  
  scope :active, -> { where(active: true) }
end
