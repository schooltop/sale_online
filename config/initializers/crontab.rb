require 'rubygems'
require 'rufus/scheduler'
scheduler = Rufus::Scheduler.new


# SiteTabs = %w[2s 3s 15s]
# SiteTabs.each do |m| 
  # scheduler.every(m) do
   # puts  m
   # puts Time.now
  # end
# end


# my=%{19 20 21 22 23}
# my.each do |m| 
   # time="0 0 #{m} * * ?"


    scheduler.cron "0 23 L * 1-7" do
     puts Time.now
     puts "111111111111111111111"
    end
    
    scheduler.cron "0 23 L * 1" do
     puts Time.now
     puts "2222222222222222222222"
    end
    
    scheduler.cron '0 23 * * 1-7' do
    # right
    puts 'activate security system'
    puts "33333333333333333333333"
    end
    
    scheduler.cron "0 0 23 L * 1-7" do
     puts Time.now
     puts "4444444444444444444444"
    end
    
   

# end