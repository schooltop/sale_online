class UserRole < ActiveRecord::Base
  set_table_name :user_roles
  belongs_to :user, :foreign_key=>"user_id"
  belongs_to :role, :foreign_key=>"role_id"
end
