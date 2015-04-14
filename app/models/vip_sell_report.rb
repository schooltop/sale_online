class VipSellReport < ActiveRecord::Base
  set_table_name "line_items"
  set_table_name "vips"
  set_table_name "vip_styles"
   def self.vip_sell_report(vipName,workName,date,start=nil,length=nil)
    @conditionSql=" 1=1"
    unless(vipName.eql?("")|| vipName.nil?)
      @conditionSql<<" and style.name like '%#{vipName}%'"
    end
     unless(workName.eql?("")|| workName.nil?)
      @conditionSql<<" and work.name like '%#{workName}%'"
    end
    unless(date.eql?("")|| date.nil?)
      @conditionSql<<" and date_format(item.updated_at,'%Y-%m')='#{date}'"
    end
     unless (start.nil? || length.nil?)
      @limit_sql="limit #{start},#{length}"
    end
    find_by_sql("select item.total_price,work.name,entry.service_time as deal_time,work.company_id as company_id,
vip.vip_num,style.name as vip_type,style.usefulltime
from (select id,total_price,updated_at from line_items  where service_style_id=1) item
left join vips vip on item.id=vip.line_item_id
left join vip_styles style on vip.vip_style_id=style.id
left join service_tasks task on item.id=task.line_item_id
left join task_entries entry on task.id=entry.service_task_id
left join works work on entry.work_id=work.id where
#{@conditionSql} #{@limit_sql}")
  end
def self.vip_sell_report_count(vipName,workName,date)
      @conditionCount=" 1=1"
    unless(vipName.eql?("")|| vipName.nil?)
      @conditionCount<<" and style.name like '%#{vipName}%'"
    end
    unless(workName.eql?("")|| workName.nil?)
      @conditionSql<<" and work.name like '%#{workName}%'"
    end
    unless(date.eql?("")|| date.nil?)
      @conditionCount<<" and date_format(item.updated_at,'%Y-%m')='#{date}'"
    end
    count_by_sql("select count(*) from (select item.total_price,work.name,entry.service_time as deal_time,work.company_id as company_id,
vip.vip_num,style.name as vip_type,style.usefulltime
from (select id,total_price,updated_at from line_items  where service_style_id=1) item
left join vips vip on item.id=vip.line_item_id
left join vip_styles style on vip.vip_style_id=style.id
left join service_tasks task on item.id=task.line_item_id
left join task_entries entry on task.id=entry.service_task_id
left join works work on entry.work_id=work.id where
#{@conditionCount}) t");
  end

def self.vip_type_data
  find_by_sql("select style.name,style.id,t.total_price from vip_styles style
left join 
(select vip.vip_style_id, sum(item.total_price) as total_price from line_items item ,vips vip  
where item.id=vip.line_item_id and item.service_style_id=1 group by vip.vip_style_id) t
on style.id=t.vip_style_id");
end

end
