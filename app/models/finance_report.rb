class FinanceReport < ActiveRecord::Base
   set_table_name "orders"
   set_table_name "line_items"
   set_table_name "products"
   set_table_name "spas"
   set_table_name "service_tasks"
   set_table_name "task_entries"
   set_table_name "works"
  def self.spa_finace_report(workName,date,start=nil,length=nil)
    @conditionSql=" and 1=1"
    unless(workName.eql?("")|| workName.nil?)
      @conditionSql<<" and works.name like '%#{workName}%'"
    end
    unless(date.eql?("")|| date.nil?)
      @conditionSql<<" and date_format(t1.updated_at,'%Y-%m-%d')='#{date}'"
    end
     unless (start.nil? || length.nil?)
      @limit_sql="limit #{start},#{length}"
    end
    find_by_sql("select works.id as work_id,works.name as work_name,works.company_id, date_format(t1.updated_at,'%Y-%m-%d') as daytime,item.totime,item.fromtime,
product.title,round(item.total_price*(t1.quantity/item.quantity),2) as total_price,spa.name,orders.state_id,orders.be_delete,item.order_id,spa.id
from works
left join (select entry.work_id,entry.service_task_id,m.action_id,entry.updated_at,entry.quantity from task_entries entry,material_tasks m where entry.id=m.task_entry_id and m.emodel='spas') t1  on works.id = t1.work_id
left join service_tasks task on t1.service_task_id=task.id
left join line_items item on task.line_item_id=item.id
left join orders on item.order_id=orders.id
left join products product on item.product_id=product.id
left join spas spa on t1.action_id=spa.id
where  orders.state_id=5 and orders.be_delete=0
#{@conditionSql} #{@limit_sql}")
  end

   def self.spa_finace_report_count(workName,date)
      @conditionCount=" and 1=1"
    unless(workName.eql?("")|| workName.nil?)
      @conditionCount<<" and works.name like '%#{workName}%'"
    end
    unless(date.eql?("")|| date.nil?)
      @conditionCount<<" and date_format(t1.updated_at,'%Y-%m-%d')='#{date}'"
    end
    count_by_sql("select count(*) from (select works.id as work_id,works.name as work_name,works.company_id, date_format(t1.updated_at,'%Y-%m-%d') as daytime,item.totime,item.fromtime,
product.title,round(item.total_price*(t1.quantity/item.quantity),2) as total_price,spa.name,orders.state_id,orders.be_delete,item.order_id,spa.id
from works
left join (select entry.work_id,entry.service_task_id,m.action_id,entry.updated_at,entry.quantity from task_entries entry,material_tasks m where entry.id=m.task_entry_id and m.emodel='spas') t1  on works.id = t1.work_id
left join service_tasks task on t1.service_task_id=task.id
left join line_items item on task.line_item_id=item.id
left join orders on item.order_id=orders.id
left join products product on item.product_id=product.id
left join spas spa on t1.action_id=spa.id
where  orders.state_id=5 and orders.be_delete=0
#{@conditionCount}) t");
  end

  def self.spa_finace_customer(customerName,date,start=nil,length=nil)
    @conditionSql=" and 1=1"
    unless(customerName.eql?("")|| customerName.nil?)
      @conditionSql<<" and orders.name like '%#{customerName}%'"
    end
    unless(date.eql?("")|| date.nil?)
      @conditionSql<<" and date_format(t1.updated_at,'%Y-%m-%d')='#{date}'"
    end
    unless (start.nil? || length.nil?)
      @limit_sql="limit #{start},#{length}"
    end
    find_by_sql("select works.id as work_id,works.name as work_name,works.company_id,orders.name as customer_name,date_format(t1.updated_at,'%Y-%m-%d') as daytime,item.totime,item.fromtime,
product.title,round(item.total_price*(t1.quantity/item.quantity),2) as total_price,spa.name,orders.state_id,orders.be_delete,item.order_id,spa.id
from works
left join (select entry.work_id,entry.service_task_id,m.action_id,entry.updated_at,entry.quantity from task_entries entry,material_tasks m where entry.id=m.task_entry_id and m.emodel='spas') t1  on works.id = t1.work_id
left join service_tasks task on t1.service_task_id=task.id
left join line_items item on task.line_item_id=item.id
left join orders on item.order_id=orders.id
left join products product on item.product_id=product.id
left join spas spa on t1.action_id=spa.id
where  orders.state_id=5 and orders.be_delete=0
#{@conditionSql} #{@limit_sql}
 ")
  end

   def self.spa_finace_customer_count(customerName,date)
     @conditionCount=" and 1=1"
    unless(customerName.eql?("")|| customerName.nil?)
      @conditionCount<<" and orders.name like '%#{customerName}%'"
    end
    unless(date.eql?("")|| date.nil?)
      @conditionCount<<" and date_format(t1.updated_at,'%Y-%m-%d')='#{date}'"
    end
    count_by_sql("select count(*)
from (select works.id as work_id,works.name as work_name,works.company_id,orders.name as customer_name,date_format(t1.updated_at,'%Y-%m-%d') as daytime,item.totime,item.fromtime,
product.title,round(item.total_price*(t1.quantity/item.quantity),2) as total_price,spa.name,orders.state_id,orders.be_delete,item.order_id,spa.id
from works
left join (select entry.work_id,entry.service_task_id,m.action_id,entry.updated_at,entry.quantity from task_entries entry,material_tasks m where entry.id=m.task_entry_id and m.emodel='spas') t1  on works.id = t1.work_id
left join service_tasks task on t1.service_task_id=task.id
left join line_items item on task.line_item_id=item.id
left join orders on item.order_id=orders.id
left join products product on item.product_id=product.id
left join spas spa on t1.action_id=spa.id
where  orders.state_id=5 and orders.be_delete=0
#{@conditionCount}) t");
  end

   def self.find_month_finance
     find_by_sql("
select  t1.company_id,t1.monthtime, sum(orders.total_price) as total_price from
(select t.id,t.company_id,date_format(t.totime,'%Y-%m-%d') monthtime from(
select entry.company_id,item.totime,item.fromtime,orders.id
from orders,line_items item,products product,spas spa,service_tasks task,
task_entries entry
where orders.id=item.order_id and item.product_id=product.id and product.id=spa.product_id and item.id=task.line_item_id  and task.id=entry.service_task_id) t
group by t.id,t.company_id,date_format(t.totime,'%Y-%m-%d')) t1 left join  orders on t1.id = orders.id
where date_format(t1.monthtime,'%Y-%m')=date_format(current_date,'%Y-%m')
group by t1.company_id,t1.monthtime")
   end


end
