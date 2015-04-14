class Work < ActiveRecord::Base
  belongs_to :user
  has_many :task_entries
  has_many :leaves
  belongs_to :company
  belongs_to :dept
  has_many :work_salaries
  has_many :cares
  # validates_length_of :idnum,:within => 18..18 ,:message=>"身份证号长度须为18位数! "    works=self.all(:conditions=>"user_id is not null")       
 def work_salary
   work_salary=WorkSalary.find(:last,:conditions=>"work_id=#{self.id}")
   return work_salary
 end
 
 
  def self.alluser
    works=self.all(:conditions=>"user_id is not null")       
    users=[]
    for user in User.all_admins
        users<<user
    end
    for work in works
      if !User.all_admins.include?work.user
      users<<work.user
      end
    end
    return users
  end
end
