class ServiceTask < ActiveRecord::Base
  belongs_to :dostyle
  belongs_to :order
  belongs_to :line_item
  has_many :task_entries
  belongs_to :situation
  belongs_to :company
  belongs_to :user
  
  
  STATU_TYPES = [
    #  订单跟单处理状态
    [ "已查收", "check" ],
    [ "已处理", "do"],   
    [ "服务中", "doing"   ],  
    [ "已结束", "done" ],
    [ "已打回", "back" ],
    [ "续单中", "goon" ]
  ]
  
end
