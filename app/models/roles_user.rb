class RolesUser < ActiveRecord::Base
   def self.allsize(roleid)
    all_size=self.all(:conditions=>"role_id=#{roleid}").size
    return all_size
   end
   
   def self.alladmins(roleid)
    all_admins=self.all(:conditions=>"role_id=#{roleid}")
    return all_admins
   end
  
end