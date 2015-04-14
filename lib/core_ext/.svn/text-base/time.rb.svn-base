require 'date'
require 'time'

class Time
     #下面的这些全部为辅助性的添加方法
    def into_month_day
      self.strftime('%m-%d')
    end
    
    def into_date
      self.strftime('%Y-%m-%d')
    end
    
    def into_datetime
      self.strftime('%Y-%m-%d %H:%M:%S')
    end
    
    def birth? #判断当前是否为生日
      self&&self.strftime('%m-%d')==Time.now.strftime('%m-%d')
    end
end

