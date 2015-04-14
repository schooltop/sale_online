class CadPosition < ActiveRecord::Base
  belongs_to :nposition
  belongs_to :cad_enterprise
  belongs_to :city
  belongs_to :educationbg
  belongs_to :situation
  belongs_to :cad_contact
  belongs_to :user
  has_many :cad_employs
  has_many :cad_enterpriseinformations
  has_many :cad_studentinformations
  has_many :cad_enterprise_preparegifts
  has_many :cad_enterprise_gifts
  has_and_belongs_to_many :majors
  has_many :cad_emails
  
  belongs_to :dept
  # validates_presence_of     :positionname 
  # validates_presence_of     :nposition_id 
  # validates_presence_of     :positionnum 
  # validates_presence_of     :city_id 
  # validates_presence_of     :exparience 
  # validates_presence_of     :wage
  # validates_presence_of     :towage
  validates_presence_of     :email 
  HH=['否','是']

end
