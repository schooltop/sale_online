class Myare < ActiveRecord::Base
  
  def childmenus
    childmenus=Myare.find_by_sql("select * FROM myares where parent_id=#{self.id}")
    return childmenus
  end
   
  def self.parent_menus
     parent_menu=Myare.find(:all,:conditions=>"parent_id is null",:order=>"id")
  end
  
end
