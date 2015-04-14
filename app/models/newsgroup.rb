#require 'acts_as_tree'
require 'file_column'
class Newsgroup < ActiveRecord::Base
    acts_as_tree :order=>"position"
    has_many :news, :order=>"publish_time desc"
    file_column :photo
    #translates :name
    
  def all_news
    result = self.news
    for child in self.children
      result += child.news
    end
    result
  end
  
  def self.newsType
    find(:all,:conditions=>"id < 3")
  end
end
