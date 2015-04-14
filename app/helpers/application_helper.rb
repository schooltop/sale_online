# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def page?(cmodule,ac_name="index")
       current_page?(:controller=>cmodule,:action=>ac_name)
     end
     
      include OtherMod
     
   SiteTabs.each do |m|
    define_method("#{m}_title_select") do |*arg|
      title,link = arg[0],arg[1]||arg[0].to_s
      title_select t(title),link,session["#{m}_tab".to_sym]
    end
   end
    def title_select(tab_title,link,sess)
       s = link != sess ? "" : "class='current'"
       img = link != sess ? "" : "<img src='/images/sj-bottom.png' />" if sess == session[:this_tab]
       "<li #{s}><a  href='/#{link}'>#{tab_title}</a>#{img}</li>"
     end

   def show_loading l_id="loading",z_id="zhezhao"
      js_show("#{l_id}","#{z_id}")
    end
    
    def hide_loading l_id="loading",z_id="zhezhao"
      js_hide("#{l_id}","#{z_id}")
    end
    
    def jquery_remote actions={}
     "<a href='#' onclick=\"#{jquery_ajax_content actions}\">#{actions[:title]}</a>"
    end
   
   
         def edit_here model,field,actions={},many="",style_area={:cols=>50,:rows=>4}
            model=model.to_s
            obj=get_obj model
            model=model+obj.id.to_s if many=="many"
            show_id = "show_#{model}_#{field}"+obj.id.to_s
            edit_id = "edit_#{model}_#{field}"+obj.id.to_s
            add_new=link_to_function "添加",jq_show("##{edit_id}")+jq_hide("##{show_id}")
            show_content=obj.send(field)&&obj.send(field)!="" ? obj.send(field) : add_new
            html,form="",""
              form << (form_remote_tag :url => actions ,:loading =>jq_show("#spinner"),:complete =>jq_hide('#spinner')+jq_show('#'+show_id), :update => show_id) 
              form << (hidden_field_tag "#{model}_id",obj.id)
              form << (text_area_tag field,obj.send(field),style_area)
              form << (submit_tag "保存" ,:onClick=>"#{jq_hide('#'+edit_id)}")
              form << (link_to_function "取消",jq_hide("##{edit_id}")+jq_show("##{show_id}"))
              form << "</from>"
            show=content_tag(:div,show_content,:id=>show_id,:onclick=>jq_show("##{edit_id}")+jq_hide("##{show_id}"),:title=>"点击进行修改",
            :onmouseover=>"jQuery('##{show_id}').css('font-size','14px')",
            :onmouseout=>"jQuery('##{show_id}').css('font-size','12px')")+
            edit=content_tag(:div,form,:id=>"#{edit_id}",:style=>"display: none;")+
            loader_message
          end

          def name_tip tip_id,description,title="description",tip_option={}
            js = " new Tip('#{tip_id}', '#{description}', {
            title: '#{title}',
            style: '#{tip_option[:style]||'creamy'}',
            radius: 0,
            stem: '#{tip_option[:stem]||'topLeft'}',
            width: #{tip_option[:width]||180}
              });"
           javascript_tag(js)
          end
          
          
          def jq_name_tip tip_id,description,title="description",tip_option={}
            js = "Tipped.create('##{tip_id}', '#{description}', {
                          skin: '#{tip_option[:skin]||'liquid'}',
                          hook: '#{tip_option[:hook]||'topmiddle'}'
                        });"
            javascript_tag(js)
          end

          
         def head_keys keywords = "",options={}
            keywords += 'goodchinese,chinese name,zodia,fortune cookie,lessons'
            content_tag(:link,nil,:rel=>'shortcut icon',:type=>'image/x-icon',:href=>'/images/home/2.png')+
            content_tag(:meta,nil,'http-equiv'=>'content-type',:content=>'text/html;charset=UTF-8')+
            content_tag(:meta,nil,:name=>'Description',:content=>(t :ad_words))+
            content_tag(:meta,nil,:name=>'Keywords',:content=>keywords)
          end

          def red_content(content)
                "<font color='red'>#{content}</font>"
          end 
              
          def login_direct
            request.url.include?("login")||request.url.include?("sign") ? website_url+"/centers" : request.url
          end

          
require 'rexml/parsers/pullparser'
def truncate_html(text, len = 30)
    p = REXML::Parsers::PullParser.new(text)
    tags = []
    new_len = len
    results = ''
    while p.has_next? && new_len > 0
      p_e = p.pull
      case p_e.event_type
      when :start_element
        tags.push p_e[0]
        results << "<#{tags.last} #{attrs_to_s(p_e[1])}>"
      when :end_element
        results << "</#{tags.pop}>"
      when :text
        results << p_e[0].first(new_len)
        new_len -= p_e[0].length
      else
        results << "<!-- #{p_e.inspect} -->"
      end
    end
    tags.reverse.each do |tag|
      results << "</#{tag}>"
    end
    results
 end
 
 def attrs_to_s(attrs)
    if attrs.empty?
      ''
    else
      attrs.to_a.map { |attr| %{#{attr[0]}="#{attr[1]}"} }.join(' ')
    end
 end
 
 def show_and_hide showid,hideid,type="js"
  case type
    when "js"
      return js_show(showid)+js_hide(hideid)
    when "jq"
      return jq_show(showid)+jq_hide(hideid)
  end
 end
     
end
