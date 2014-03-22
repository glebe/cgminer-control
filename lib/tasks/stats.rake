namespace :stats do
  desc "Collect stats for all active cgminer instances"
  task :collect, [:interval] => [:environment] do |t, args|
    
    return if args[:interval].blank? || args[:interval].to_i == 0
    puts "Starting collecting stats with #{args[:interval]} seconds interval"
    
    @loopcheck = true
    while(@loopcheck) do 
          begin
            Miner.active.each do |miner|
              puts "Processing miner #{miner.name}..."
              client = CGMiner::API::Client.new(miner.host, miner.port)
    
              devs = client.devs.body
              pools = client.pools.body
              summary = client.summary.body
      
              log = miner.crude_logs.build(devs: devs, pools: pools, summary: summary)
              if log.save
                puts "Data saved"
              else
                puts "Saving failed"
              end
            end
          rescue
            @loopcheck = false
          end
          sleep(args[:interval].to_i)
       end
  end

end
