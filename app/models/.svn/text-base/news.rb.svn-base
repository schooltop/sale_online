class News < ActiveRecord::Base
  belongs_to :newsgroup
  has_attached_file :photo,  :styles => { :medium => "300x300>", :thumb => "100x100>" }
  #translates :name
  def self.real_news
    News.find(:all,:conditions=>"newsgroup_id < 3", :order=>"top desc, position, publish_time desc")
  end
  
  # def self.real_news
    # find_by_sql("select * from news where newsgroup_id < 3 order by top desc, position, publish_time desc")
  # end

end
