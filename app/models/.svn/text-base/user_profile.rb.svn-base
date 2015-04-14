class UserProfile < ActiveRecord::Base
  belongs_to    :age_bracket
  belongs_to    :user
  belongs_to    :trade
  belongs_to    :quale
  # validates_presence_of     :sales
  # validates_presence_of     :buys
  
  # has_attached_file :image, :default_url => '/images/avatar.gif'
  # has_attached_file :yyzz, :default_url => '/images/avatar.gif'
# #  validates_attachment_presence :image
  # validates_attachment_size :image, :less_than => 5.megabytes, :if => Proc.new{|profile| profile.image.file?}
  # validates_attachment_content_type :image, :content_type => [ 'image/gif', 'image/png', 'image/x-png', 'image/jpeg', 'image/pjpeg', 'image/jpg'],
        # :if => Proc.new{|profile| profile.image.file?}
  # validates_attachment_content_type :yyzz, :content_type => [ 'image/gif', 'image/png', 'image/x-png', 'image/jpeg', 'image/pjpeg', 'image/jpg'],
        # :if => Proc.new{|profile| profile.yyzz.file?}
#         
        def sex
          self.gender == '0' ?  "男" : "女"
        end
  
end
