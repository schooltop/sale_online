class Picture < ActiveRecord::Base
  def src
    self.file_path.gsub("public","")
  end
  
  def self.admin_pics
    Picture.all.select{|p| p.bean == "admin"}[-3,3]
  end
end
