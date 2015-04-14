module Rails
  module TextHelper 
    
    def put_each_name(names,name='name',fuhao=",")#对于一个对象集合，我们对其输出每个需要的字符串 可以按此追个输出。。
      html=""
      names.each {|role| html+=role.send(name)+(role==names.last ? "" : fuhao)} if names
      html
    end
    
    def put_each_name_with_yinhao(names,name='name',yinhao="'",fuhao=",")#对于一个对象集合，我们对其输出每个需要的字符串 可以按此追个输出。。
      html=""
      names.each {|role| html+=role.send(name).wrap(yinhao)+(role==names.last ? "" : fuhao)} if names
      html
    end
    
    
    
     def page?(cmodule,ac_name="index")
       current_page?(:controller=>cmodule,:action=>ac_name)
     end
    
    def short_string(str,num=21) #当一段文字比较长时我们可以根据需要的长度截取字符串 并返回该串的这个长度作为简介……
       (str.size > num || str.size == num) ? (str[0,num]+"......") : str
    end
    
     def nbsp_times(num=2) #空格的个数 一个简单的函数
       "&nbsp;"*(num)
    end
    
    def id_string_params objs,fuhao="/" #生成一个id_string的字符串 给页面  只需要传递一个对象集合就可以 它的id与“fuhao”组成的字符串集合 默认fuhao为"/"
      id_string=""
      objs.each {|obj| id_string=id_string+"#{obj.id}"+fuhao }
      id_string
    end
    
    def id_string_tag objs=@rcrm_accounts#由上面而来 添加一个具有:id_string参数的隐藏按钮  一边传给controller接收
      hidden_field_tag :id_string,id_string_params(objs)
    end
    
    def loader_message(id="spinner",html={})
      file = '/images/'+id+'.gif'
      tfile = File.file?("public"+file) ? file : '/images/spinner.gif'
      loading=image_tag(tfile)
      style=html[:style]||"" 
      html.delete(:style) if html[:style]
      content_tag(:div,loading,{:id=>id,:style=>'display:none;z-index: 40;position: absolute;'+style}.merge(html))
    end
    
    
    def link_to_image(*args)
        path         = args[0]
        options      = args[1] || {}
        html_options = args[2] || {}
    
       # html_options = convert_options_to_data_attributes(options, html_options)
        url = url_for(options)
    
        href = html_options['href']
        tag_options = tag_options(html_options)
    
        href_attr = "href=\"#{ERB::Util.html_escape(url)}\"" unless href
        "<a #{href_attr}#{tag_options}><img src='/images/#{path}' #{tag_options}></a>"
    end
   
   
   def selected_radio_tag options,param,html_options={}
      html=""
      options.each do |edu|
       attrs=html_options.merge(:name=>param,:type=>'radio',:value=>edu)
       html+=content_tag(:input,edu,((edu==params_content(param)?(edu==params_content(param)):(edu==options.first)) ? attrs.merge(:checked=>"checked") : attrs))
      end
      html
    end
    def loop_common_tr(cmodules,num,str="student_classes",name="name",option={})
     s=""
     i=0
        cmodules.each do |ss|
                if i==0
                      s+="<tr>"
                elsif i>=num&&i%num==0 
                      s+="</tr><tr>"
                end
                      s+="<td>#{(str.include?("[") ? (check_box_tag str+'[]',ss.id,params_content(str).include?(ss.id)) : (check_box_tag str+'[]',ss.id)) if option[:check]}
                      #{params_content(str)==ss.send(name) ? (radio_button_tag  str,ss.id,true) : (radio_button_tag  str,ss.id) if option[:radio]}
                      #{ss.respond_to?(name.to_sym) ? ss.send(name) : ss}&nbsp;</td>"
                  i=i+1
         end
     s+="</tr>"
     s
    end
    
    def format_start_date obj,field_name="start_date" #返回一个对象的开始时间  超过当前则为红色标注 字段默认名为 start_date
      s=""
      if obj.send(field_name.to_sym)
        if into_date(obj.send(field_name.to_sym)) < into_date(Time.now)
              s=red_content(into_date(obj.send(field_name.to_sym)))
        elsif into_date(obj.send(field_name.to_sym))==into_date(Time.now)#||(obj.send(field_name.to_sym) < Time.now+60*60*24)
              s="<font color='#FF7800'>#{into_date(obj.send(field_name.to_sym))}</font>"
        else
              s="#{into_date(obj.send(field_name.to_sym))}"
        end
      end
       s
    end
    
  def edit_here model,field,actions={},style_area={:cols=>30,:rows=>4}
     model=model.to_s
     obj=get_obj model
     add_new=link_to_function "添加",jq_show("#edit_#{model}")+jq_hide("#show_#{model}")
     show_content=obj.send(field)&&obj.send(field)!="" ? obj.send(field) : add_new
     html,form="",""
       form << (form_remote_tag :url => actions ,:loading =>jq_show("#spinner"),:complete =>jq_hide('#spinner')+jq_show('#show_'+model), :update => "show_"+model) 
       form << (hidden_field_tag "#{model}_id",obj.id)
       form << (text_area_tag field,obj.send(field),style_area)
       form << (submit_tag "保存" ,:onClick=>"#{jq_hide('#edit_'+model)}")
       form << (link_to_function "取消",jq_hide("#edit_#{model}")+jq_show("#show_#{model}"))
       form << end_form
     show=content_tag(:div,show_content,:id=>"show_#{model}",:onclick=>jq_show("#edit_#{model}")+jq_hide("#show_#{model}"),:title=>"点击进行修改",
     :onmouseover=>"jQuery('#show_#{model}').css('font-size','14px')",
     :onmouseout=>"jQuery('#show_#{model}').css('font-size','12px')")+
     edit=content_tag(:div,form,:id=>"edit_#{model}",:style=>"display: none;")+
     loader_message
   end
   
    private
    
    def get_obj model
      instance_variable_get("@"+model)
    end
    
    def params_content params,name="name"
      if operate_params(params)
        obj=instance_variable_get("@"+params.split("[")[0])
        field_str=operate_params(params)["field"]
        field_str[-3,3]==("_id") ? ( obj.send(field_str.gsub(/_id/,'')).send(name) if obj.send(field_str.gsub(/_id/,''))) : obj.send(field_str.to_sym)
      end
    end
    def operate_params params
      {"obj"=>params.split("[")[0],"field"=>params.split("[")[1].delete("]")} if params.include?("[")
    end
    
  end
end