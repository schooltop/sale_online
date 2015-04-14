
#START:has_many
class Product < ActiveRecord::Base
  acts_as_tree :foreign_key =>"parent_id"
  has_many :orders, :through => :line_items
  has_many :line_items
  belongs_to :service
  belongs_to :company
  belongs_to :service_style
  has_many :spas
  
  def self.find_products_for_sale
    find(:all, :order => "title")
  end
  
  ON_STATE = 7
  OFF_STATE = 8

  #START:validation
  #validates_presence_of :title, :description, :image_url
  #validates_numericality_of :price
  #validates_uniqueness_of :title
  validates_format_of :image_url, 
                      :with    => %r{\.(gif|jpg|png)$}i,
                      :message => "must be a URL for a GIF, JPG, or PNG image"
        
  def pictures
    pics = Picture.find(:all,:conditions=>"bean = 'Product' and bean_id = #{self.id}")
  end      
                      
  def chill_products
    products=Product.find(:all,:conditions=>"palent_id=#{self.id}")
  end                    
                      
  def first_picture
    self.pictures[0].file_path.gsub("public","") rescue ""
  end                    
  protected

  # def validate
    # errors.add(:price, "should be at least 0.01") if price.nil? ||  price < 0.01
  # end
  #END:validation
#START:has_many
end
#END:has_many

