class Company < ActiveRecord::Base
  has_many :task_entries  #相关工单任务
  has_many :works  #工作人员
  has_many :depts  #相关部门
  has_many :spas   #相关房间
  
  
  def belong_trades#本公司所有所属行业
    all_trades=[]
    for trade in ["Spa","Car","Hourse"]
      #constantize 能把字符串转换为对应模型
      if trade.constantize.find_by_company_id(self.id)&&trade.find_by_company_id(self.id).size>0
        all_trade<<trade
      end
    end
    return all_trades
  end
  
  
end
